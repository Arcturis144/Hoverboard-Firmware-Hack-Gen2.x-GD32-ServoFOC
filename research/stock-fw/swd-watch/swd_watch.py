#!/usr/bin/env python3
"""Read-only live watcher for a running GD32F130 over SWD (factory-firmware research).

What it does
  * attaches to the target WITHOUT halting or resetting it;
  * repeatedly block-reads SRAM (and, only if you ask, named peripheral ranges) through the
    debug port's memory access path, which works while the core runs;
  * records every byte that changes between samples -> an activity map (which variables move,
    how often, which values they take), annotated from ram_map.json;
  * optionally records chosen variables as a time series, and, with --pc-sample, samples the
    program counter (DWT_PCSR) to show which functions the CPU is executing, using b_functions.csv.

What it cannot do
  * It is SAMPLING, not tracing. A variable that changes faster than the achieved sample rate
    (the PWM compare registers at 16 kHz, anything written by an ISR) is aliased: counts are
    lower bounds and fast signals look slower than they are. The summary prints the achieved rate.
  * It cannot see which instruction wrote a byte. Real write/read capture would need DWT data
    watchpoints plus SWO trace (header must expose SWO) or a halting debugger - not done here.

Safety rules baked in
  * never halts, resets, resumes, or writes target memory; refuses if the core is already halted;
  * default read range is SRAM only; peripheral ranges need --peripheral and a block-list protects
    registers whose READ has side effects (USART status/data, ADC data/status, FMC, SPI/I2C data);
  * --pc-sample performs ONE write to the debug register DEMCR (set TRCENA) if it is clear,
    needed for the DWT unit to answer; skip that option for a strictly zero-write session.
  * Do not run with motor phases connected and the wheel free to turn until you understand the
    stock outputs; halting a core with TIMER0 outputs enabled can leave a gate driver stuck on.

Labelling stimuli (--annotate)
  Type a label and press Enter when you change what you are doing ("idle", "tilt forward",
  "left pad pressed", ...). Changes are then counted per label, and stimulus.csv lists bytes that
  move much more under a label than during the first (baseline) label.

Usage
  python3 swd_watch.py --duration 30 --out-dir run1 [--pc-sample] [--series motor_state_260,hall_angle_294]
  python3 swd_watch.py --duration 0 --annotate --out-dir run2      # run until Ctrl-C, label as you go
Backends: pyOCD (default, `pip install pyocd`; any probe pyOCD supports). Tested only against
a simulated target in test_swd_watch.py - NOT yet against hardware.
"""
import argparse
import bisect
import csv
import json
import os
import struct
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
SRAM_BASE = 0x20000000
DWT_PCSR = 0xE000101C
DEMCR = 0xE000EDFC
DHCSR = 0xE000EDF0
TRCENA = 1 << 24
S_HALT = 1 << 17

# Peripheral ranges whose reads have side effects on the GD32F130 (blocked unless --unsafe-peripherals).
BLOCKED = [
    (0x40013800, 0x40013C00, "USART0 (status/data reads clear flags)"),
    (0x40004400, 0x40004800, "USART1 (status/data reads clear flags)"),
    (0x40012400, 0x40012800, "ADC (data/status reads clear EOC/EOIC)"),
    (0x40022000, 0x40022400, "FMC (flash controller)"),
    (0x40013000, 0x40013400, "SPI0 (data reads clear flags)"),
    (0x40003800, 0x40003C00, "SPI1 (data reads clear flags)"),
    (0x40005400, 0x40005C00, "I2C (status/data reads clear flags)"),
    (0x40020000, 0x40020400, "DMA (keep hands off while a transfer runs)"),
]

FMT = {"u8": ("<B", 1), "s8": ("<b", 1), "u16": ("<H", 2), "s16": ("<h", 2), "u32": ("<I", 4), "s32": ("<i", 4)}


class SafetyError(Exception):
    pass


def parse_int(s):
    return int(s, 0)


def load_ram_map(path=None):
    path = path or os.path.join(HERE, "ram_map.json")
    with open(path) as fh:
        entries = json.load(fh)["entries"]
    out = []
    for e in entries:
        out.append({"name": e["name"], "addr": parse_int(e["addr"]), "size": e["size"], "fmt": e["fmt"],
                    "assumed": bool(e.get("assumed"))})
    return out


def load_functions(path=None):
    path = path or os.path.join(HERE, "b_functions.csv")
    rows = []
    with open(path) as fh:
        for r in csv.DictReader(fh):
            rows.append((parse_int(r["address"]), r["name"]))
    rows.sort()
    return rows


def name_for_address(entries, addr):
    """Most specific (smallest) entry containing addr -> 'name+off', else None."""
    best = None
    for e in entries:
        if e["addr"] <= addr < e["addr"] + e["size"]:
            if best is None or e["size"] < best["size"]:
                best = e
    if best is None:
        return None
    off = addr - best["addr"]
    return best["name"] + ("+%d" % off if off else "")


def function_for_pc(funcs, pc):
    pc &= ~1
    keys = [a for a, _ in funcs]
    i = bisect.bisect_right(keys, pc) - 1
    if i < 0 or pc >= 0x08008000:
        return None
    return funcs[i][1]


def check_ranges(ranges, allow_peripheral, unsafe, sram_size):
    """ranges: list of (addr, length). Raises SafetyError for anything not clearly safe to read."""
    for addr, n in ranges:
        if n <= 0:
            raise SafetyError("empty range")
        end = addr + n
        if SRAM_BASE <= addr and end <= SRAM_BASE + sram_size:
            continue
        if 0x40000000 <= addr < 0x60000000:
            if not allow_peripheral:
                raise SafetyError("peripheral read 0x%08X needs --peripheral" % addr)
            if not unsafe:
                for lo, hi, why in BLOCKED:
                    if addr < hi and end > lo:
                        raise SafetyError("0x%08X-0x%08X overlaps blocked range: %s" % (addr, end, why))
            continue
        raise SafetyError("range 0x%08X+%d is outside SRAM (0x%08X+0x%X) and not a peripheral" %
                          (addr, n, SRAM_BASE, sram_size))


class PyOcdBackend:
    """Thin wrapper over pyOCD. Only read calls plus an optional DEMCR set are ever issued."""

    def __init__(self, probe_id=None, freq=1_000_000):
        from pyocd.core.helpers import ConnectHelper   # imported lazily so tests need no pyOCD
        opts = {"connect_mode": "attach", "frequency": freq, "target_override": "cortex_m",
                "auto_unlock": False, "resume_on_disconnect": False}
        self.session = ConnectHelper.session_with_chosen_probe(unique_id=probe_id, options=opts,
                                                               blocking=False, return_first=probe_id is None,
                                                               auto_open=False)
        if self.session is None:
            raise SafetyError("no debug probe found")
        self.session.open()
        self.target = self.session.target

    def read32(self, addr):
        return self.target.read32(addr)

    def read_block(self, addr, n):
        return bytes(self.target.read_memory_block8(addr, n))

    def write32_debug(self, addr, value):   # used only for DEMCR.TRCENA
        self.target.write32(addr, value)

    def close(self):
        self.session.close()


class Watcher:
    def __init__(self, backend, ranges, ram_map, funcs, pc_sample=False, clock=time.perf_counter):
        self.b, self.ranges, self.map, self.funcs = backend, ranges, ram_map, funcs
        self.pc_sample, self.clock = pc_sample, clock
        self.prev = {}                          # range index -> bytes
        self.changes = {}                       # addr -> count
        self.values = {}                        # addr -> {value: count} (capped)
        self.last = {}
        self.pc_hist = {}
        self.pc_none = 0
        self.samples = 0
        self.read_time = 0.0
        self.t0 = None
        self.t1 = None
        self.series = []                        # (t, {name: value})
        self.series_names = []
        self.change_log = []                    # (t, addr, old, new)
        self.phase = "start"
        self.phase_time = {}                    # label -> seconds spent
        self.phase_changes = {}                 # label -> {addr: count}
        self.phase_start = None
        self.phase_order = ["start"]
        self._explicit_phase = False

    def set_phase(self, label):
        t = self.clock()
        if not self._explicit_phase and self.samples == 0:
            # a label set before any sample replaces the implicit "start" baseline instead of following it
            self._explicit_phase = True
            self.phase_order = [label]
            self.phase = label
            self.phase_start = None if self.t0 is None else t
            return
        if self.phase_start is not None:
            self.phase_time[self.phase] = self.phase_time.get(self.phase, 0.0) + (t - self.phase_start)
        self.phase_start = t
        self.phase = label
        if label not in self.phase_order:
            self.phase_order.append(label)

    def preflight(self):
        dh = self.b.read32(DHCSR)
        if dh & S_HALT:
            raise SafetyError("core is halted (DHCSR=0x%08X); refusing to continue" % dh)
        if self.pc_sample:
            dem = self.b.read32(DEMCR)
            if not dem & TRCENA:
                self.b.write32_debug(DEMCR, dem | TRCENA)

    def sample(self):
        t = self.clock()
        if self.t0 is None:
            self.t0 = t
            self.phase_start = t
        for i, (addr, n) in enumerate(self.ranges):
            data = self.b.read_block(addr, n)
            old = self.prev.get(i)
            if old is not None:
                for k in range(n):
                    if data[k] != old[k]:
                        a = addr + k
                        self.changes[a] = self.changes.get(a, 0) + 1
                        pc_ = self.phase_changes.setdefault(self.phase, {})
                        pc_[a] = pc_.get(a, 0) + 1
                        d = self.values.setdefault(a, {})
                        if len(d) < 32 or data[k] in d:
                            d[data[k]] = d.get(data[k], 0) + 1
                        self.change_log.append((t - self.t0, a, old[k], data[k], self.phase))
            else:
                for k in range(n):
                    self.last[addr + k] = data[k]
            self.prev[i] = data
        if self.pc_sample:
            pc = self.b.read32(DWT_PCSR)
            if pc == 0xFFFFFFFF:
                self.pc_none += 1
            else:
                fn = function_for_pc(self.funcs, pc) or "unmapped"
                self.pc_hist[fn] = self.pc_hist.get(fn, 0) + 1
        if self.series_names:
            self.series.append((t - self.t0, {n: self.read_named(n) for n in self.series_names}))
        self.t1 = self.clock()
        self.read_time += self.t1 - t
        self.samples += 1

    def read_named(self, name):
        e = next(x for x in self.map if x["name"] == name)
        for i, (addr, n) in enumerate(self.ranges):
            if addr <= e["addr"] and e["addr"] + e["size"] <= addr + n:
                off = e["addr"] - addr
                raw = self.prev[i][off:off + e["size"]]
                if e["fmt"] in FMT:
                    return struct.unpack(FMT[e["fmt"]][0], raw)[0]
                return raw.hex()
        raise SafetyError("series %s is not inside a watched range" % name)

    def rate(self):
        if self.samples < 2 or self.t1 == self.t0:
            return 0.0
        return (self.samples - 1) / (self.t1 - self.t0)

    def activity_rows(self):
        rows = []
        for a, c in sorted(self.changes.items()):
            vals = self.values.get(a, {})
            rows.append({"addr": "0x%08X" % a, "name": name_for_address(self.map, a) or "", "changes": c,
                         "distinct_values": len(vals), "min": min(vals), "max": max(vals),
                         "last": self.prev_byte(a)})
        rows.sort(key=lambda r: -r["changes"])
        return rows

    def prev_byte(self, a):
        for i, (addr, n) in enumerate(self.ranges):
            if addr <= a < addr + n:
                return self.prev[i][a - addr]
        return None


def write_outputs(w, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    rows = w.activity_rows()
    with open(os.path.join(out_dir, "activity.csv"), "w", newline="") as fh:
        wr = csv.DictWriter(fh, fieldnames=["addr", "name", "changes", "distinct_values", "min", "max", "last"])
        wr.writeheader()
        wr.writerows(rows)
    if w.pc_sample:
        tot = sum(w.pc_hist.values())
        with open(os.path.join(out_dir, "pc_hist.csv"), "w", newline="") as fh:
            wr = csv.writer(fh)
            wr.writerow(["function", "samples", "percent"])
            for k, v in sorted(w.pc_hist.items(), key=lambda kv: -kv[1]):
                wr.writerow([k, v, "%.1f" % (100.0 * v / tot if tot else 0)])
    if w.series_names:
        with open(os.path.join(out_dir, "series.csv"), "w", newline="") as fh:
            wr = csv.writer(fh)
            wr.writerow(["t_s"] + w.series_names)
            for t, vals in w.series:
                wr.writerow(["%.6f" % t] + [vals[n] for n in w.series_names])
    with open(os.path.join(out_dir, "changes.jsonl"), "w") as fh:
        for t, a, o, n, ph in w.change_log:
            fh.write(json.dumps({"t": round(t, 6), "addr": "0x%08X" % a, "old": o, "new": n, "phase": ph}) + "\n")
    if len(w.phase_order) > 1:
        w.set_phase(w.phase)          # close the running phase
        with open(os.path.join(out_dir, "phases.csv"), "w", newline="") as fh:
            wr = csv.writer(fh)
            wr.writerow(["addr", "name"] + ["%s (%.1fs)" % (p, w.phase_time.get(p, 0)) for p in w.phase_order])
            addrs = sorted({a for d in w.phase_changes.values() for a in d})
            for a in addrs:
                wr.writerow(["0x%08X" % a, name_for_address(w.map, a) or ""] +
                            [w.phase_changes.get(p, {}).get(a, 0) for p in w.phase_order])
        with open(os.path.join(out_dir, "stimulus.csv"), "w", newline="") as fh:
            wr = csv.writer(fh)
            wr.writerow(["phase", "addr", "name", "changes", "changes_per_s", "baseline_per_s"])
            for r in stimulus_rows(w):
                wr.writerow(r)
    return rows


def stimulus_rows(w, min_changes=3, ratio=5.0):
    """Bytes whose change rate under a label is >= ratio x the baseline (first label) rate."""
    base = w.phase_order[0]
    base_t = max(w.phase_time.get(base, 0.0), 1e-9)
    out = []
    for p in w.phase_order[1:]:
        t = max(w.phase_time.get(p, 0.0), 1e-9)
        for a, c in w.phase_changes.get(p, {}).items():
            if c < min_changes:
                continue
            b = w.phase_changes.get(base, {}).get(a, 0) / base_t
            if c / t >= ratio * max(b, 1.0 / base_t if base_t > 0 else 0):
                out.append((p, "0x%08X" % a, name_for_address(w.map, a) or "", c, round(c / t, 2), round(b, 2)))
    out.sort(key=lambda r: (r[0], -r[3]))
    return out


def summary(w, rows, top=25):
    lines = ["samples: %d  achieved rate: %.1f Hz  mean read time: %.2f ms" %
             (w.samples, w.rate(), 1000.0 * w.read_time / max(w.samples, 1)),
             "NOTE: sampled view; anything changing faster than the rate above is aliased (counts are lower bounds)."]
    if len(w.phase_order) > 1:
        lines.append("labels: " + ", ".join("%s (%.1fs)" % (p, w.phase_time.get(p, 0)) for p in w.phase_order))
        st = stimulus_rows(w)
        lines.append("bytes that move much more under a label than at baseline: %d (see stimulus.csv)" % len(st))
        for r in st[:15]:
            lines.append("  [%s] %s %-26s changes=%d (%.1f/s vs %.1f/s baseline)" % (r[0], r[1], r[2], r[3], r[4], r[5]))
    lines.append("most active bytes:")
    for r in rows[:top]:
        lines.append("  %s %-28s changes=%-6d distinct=%-3d range=%d..%d" %
                     (r["addr"], r["name"], r["changes"], r["distinct_values"], r["min"], r["max"]))
    if w.pc_sample:
        tot = sum(w.pc_hist.values())
        lines.append("PC samples: %d (core asleep/halted: %d)" % (tot, w.pc_none))
        for k, v in sorted(w.pc_hist.items(), key=lambda kv: -kv[1])[:15]:
            lines.append("  %-34s %6d  %5.1f%%" % (k, v, 100.0 * v / tot if tot else 0))
    return "\n".join(lines)


def run(backend, args, ram_map, funcs, clock=time.perf_counter, sleep=time.sleep):
    ranges = [(parse_int(a), parse_int(n)) for a, n in (r.split(":") for r in args.range)] if args.range \
        else [(SRAM_BASE, args.sram_size)]
    if args.peripheral:
        ranges += [(parse_int(a), parse_int(n)) for a, n in (r.split(":") for r in args.peripheral)]
    check_ranges(ranges, bool(args.peripheral), args.unsafe_peripherals, args.sram_size)
    w = Watcher(backend, ranges, ram_map, funcs, pc_sample=args.pc_sample, clock=clock)
    if args.series:
        w.series_names = [s for s in args.series.split(",") if s]
    w.preflight()
    if getattr(args, "annotate", False):
        import threading

        def reader():
            n = 0
            for line in sys.stdin:
                n += 1
                w.set_phase(line.strip() or "phase%d" % n)
                print("-- label: %s" % w.phase, flush=True)
        threading.Thread(target=reader, daemon=True).start()
        print("Type a label and press Enter whenever the stimulus changes (first label = baseline).", flush=True)
    end = clock() + args.duration if args.duration else None
    try:
        while end is None or clock() < end:
            w.sample()
            if args.interval:
                sleep(args.interval / 1000.0)
    except KeyboardInterrupt:
        pass
    rows = write_outputs(w, args.out_dir)
    print(summary(w, rows))
    return w


def build_parser():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--out-dir", default="swd-run")
    ap.add_argument("--duration", type=float, default=30.0, help="seconds (0 = until Ctrl-C)")
    ap.add_argument("--interval", type=float, default=0.0, help="extra ms to wait between samples (default: as fast as the probe allows)")
    ap.add_argument("--range", action="append", help="ADDR:LEN SRAM range to watch (default: SRAM base, --sram-size bytes)")
    ap.add_argument("--sram-size", type=parse_int, default=0xB00, help="bytes of SRAM to read (stock stack top is 0x20000A90)")
    ap.add_argument("--peripheral", action="append", help="ADDR:LEN peripheral range to read (side-effect ranges are blocked)")
    ap.add_argument("--unsafe-peripherals", action="store_true", help="allow blocked ranges (reads may disturb the firmware)")
    ap.add_argument("--series", help="comma-separated ram_map names to log as a time series")
    ap.add_argument("--annotate", action="store_true", help="read stimulus labels from stdin (Enter = new label)")
    ap.add_argument("--pc-sample", action="store_true", help="sample DWT_PCSR (sets DEMCR.TRCENA once)")
    ap.add_argument("--probe-id", help="pyOCD probe unique id")
    ap.add_argument("--freq", type=int, default=1_000_000, help="SWD clock in Hz")
    ap.add_argument("--map", help="alternative ram_map.json")
    ap.add_argument("--functions", help="alternative b_functions.csv")
    return ap


def main(argv=None):
    args = build_parser().parse_args(argv)
    ram_map = load_ram_map(args.map)
    funcs = load_functions(args.functions)
    try:
        backend = PyOcdBackend(args.probe_id, args.freq)
    except ImportError:
        sys.exit("pyOCD is not installed: pip install pyocd")
    try:
        run(backend, args, ram_map, funcs)
    except SafetyError as e:
        sys.exit("refused: %s" % e)
    finally:
        backend.close()


if __name__ == "__main__":
    main()
