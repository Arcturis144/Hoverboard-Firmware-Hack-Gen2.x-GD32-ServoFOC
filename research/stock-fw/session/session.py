#!/usr/bin/env python3
"""One keyboard drives both watchers: label the stimulus with a single key press (no Enter).

Runs on the PC that has the ST-Link and the Blue Pill sniffer attached:
  * the SWD watcher (swd_watch.py, read-only) samples the board's RAM and tags every change with
    the label that is active at that moment;
  * the sniffer's USB serial lines are logged with this PC's clock, so every UART frame can be
    matched to the label that was active when it arrived (see analyze_session.py);
  * your key presses are recorded as marks (marks.csv) on the same clock.

Keys (change with --keys):  0 = back to baseline "idle" | 1..9 = start that label |
                            m = point marker (an instant, e.g. "pad clicked") | q = finish
Either source is optional: use --no-swd or omit --uart-port to run just one.

  python3 session.py --out-dir run1 --uart-port COM5 --pc-sample \\
      --peripheral 0x48000010:4 --peripheral 0x48000410:4 --peripheral 0x48000810:4

Timing note: UART lines are stamped when the PC receives them, so they carry USB/OS latency of a
few milliseconds; labels are meant for stimuli lasting seconds, not for sub-10 ms alignment.
Status: tested with simulated keys, target and serial data only; not run against hardware.
"""
import argparse
import csv
import os
import sys
import threading
import time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "..", "swd-watch"))
sys.path.insert(0, os.path.join(HERE, "..", "sniffer-v9"))

DEFAULT_KEYS = ("1=tilt forward,2=tilt back,3=roll left,4=roll right,5=left pad pressed,"
                "6=right pad pressed,7=both pads pressed,8=wheel turned by hand,9=throttle input")


def parse_keys(spec):
    out = {}
    for part in spec.split(","):
        k, _, label = part.partition("=")
        k, label = k.strip(), label.strip()
        if len(k) != 1 or not label:
            raise ValueError("bad --keys entry %r (want one character, '=', a label)" % part)
        if k in ("0", "m", "q"):
            raise ValueError("keys 0, m and q are reserved")
        out[k] = label
    return out


class ConsoleKeys:
    """Single key presses from the terminal that has focus (Windows msvcrt, otherwise termios)."""

    def __enter__(self):
        if not sys.stdin.isatty():
            raise RuntimeError("stdin is not a terminal; run in a real console window")
        if os.name != "nt":
            import termios
            import tty
            self._fd = sys.stdin.fileno()
            self._old = termios.tcgetattr(self._fd)
            tty.setcbreak(self._fd)
        return self

    def __exit__(self, *exc):
        if os.name != "nt":
            import termios
            termios.tcsetattr(self._fd, termios.TCSADRAIN, self._old)

    def get(self, timeout=0.1):
        if os.name == "nt":
            import msvcrt
            end = time.time() + timeout
            while time.time() < end:
                if msvcrt.kbhit():
                    return msvcrt.getwch()
                time.sleep(0.01)
            return None
        import select
        r, _, _ = select.select([sys.stdin], [], [], timeout)
        return sys.stdin.read(1) if r else None


class PynputKeys:
    """Optional: global hotkeys that work while another window has focus (pip install pynput).
    Untested here. On macOS and some Linux setups the OS asks for input-monitoring permission."""

    def __init__(self):
        import queue
        from pynput import keyboard
        self.q = queue.Queue()
        self.listener = keyboard.Listener(on_press=lambda k: self.q.put(getattr(k, "char", None)))

    def __enter__(self):
        self.listener.start()
        return self

    def __exit__(self, *exc):
        self.listener.stop()

    def get(self, timeout=0.1):
        import queue
        try:
            return self.q.get(timeout=timeout)
        except queue.Empty:
            return None


class ScriptedKeys:
    """For tests: yields (delay_s, key) pairs relative to the first get()."""

    def __init__(self, script, clock):
        self.script, self.clock, self.t0 = list(script), clock, None

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        pass

    def get(self, timeout=0.1):
        if self.t0 is None:
            self.t0 = self.clock()
        if self.script and self.clock() - self.t0 >= self.script[0][0]:
            return self.script.pop(0)[1]
        time.sleep(min(timeout, 0.005))
        return None


class Session:
    BASELINE = "idle"

    def __init__(self, out_dir, keys, clock=time.perf_counter, on_phase=None):
        self.out_dir, self.keys, self.clock, self.on_phase = out_dir, keys, clock, on_phase
        os.makedirs(out_dir, exist_ok=True)
        self.marks = []          # (t, key, label, kind)  kind: phase | point
        self.label = self.BASELINE
        self.stop = threading.Event()
        self.lock = threading.Lock()

    def start(self):
        self._phase("0", self.BASELINE)

    def _phase(self, key, label):
        t = self.clock()
        with self.lock:
            self.label = label
            self.marks.append((t, key, label, "phase"))
        if self.on_phase:
            self.on_phase(label)
        print("[%s] label -> %s" % ("%.1fs" % (t - self.marks[0][0]), label), flush=True)

    def press(self, key):
        if key is None:
            return
        if key == "q":
            self.stop.set()
        elif key == "0":
            self._phase("0", self.BASELINE)
        elif key == "m":
            t = self.clock()
            with self.lock:
                self.marks.append((t, "m", "marker", "point"))
            print("[marker]", flush=True)
        elif key in self.keys:
            self._phase(key, self.keys[key])

    def write_marks(self):
        with open(os.path.join(self.out_dir, "marks.csv"), "w", newline="") as fh:
            w = csv.writer(fh)
            w.writerow(["t_s", "key", "label", "kind"])
            for t, k, label, kind in self.marks:
                w.writerow(["%.6f" % t, k, label, kind])


def serial_logger(port, baud, out_dir, stop, clock, lines_out=None):
    """Logs each sniffer line with the PC clock to uart_timed.csv (pyserial required)."""
    import serial
    ser = serial.Serial(port, baud, timeout=0.2)
    with open(os.path.join(out_dir, "uart_timed.csv"), "w", newline="") as fh:
        w = csv.writer(fh)
        w.writerow(["t_s", "line"])
        while not stop.is_set():
            raw = ser.readline()
            if raw:
                line = raw.decode("ascii", "replace").strip()
                w.writerow(["%.6f" % clock(), line])
                if lines_out is not None:
                    lines_out.append(line)
    ser.close()


def swd_loop(watcher, stop):
    while not stop.is_set():
        watcher.sample()


def run(args, key_source, backend=None, serial_fn=None, clock=time.perf_counter):
    import swd_watch as sw
    keys = parse_keys(args.keys)
    sess = Session(args.out_dir, keys, clock=clock)
    threads, watcher = [], None
    if not args.no_swd:
        ram_map, funcs = sw.load_ram_map(), sw.load_functions()
        ranges = [(sw.SRAM_BASE, args.sram_size)]
        if args.peripheral:
            ranges += [(sw.parse_int(a), sw.parse_int(n)) for a, n in (r.split(":") for r in args.peripheral)]
        sw.check_ranges(ranges, bool(args.peripheral), args.unsafe_peripherals, args.sram_size)
        backend = backend or sw.PyOcdBackend(args.probe_id, args.freq)
        watcher = sw.Watcher(backend, ranges, ram_map, funcs, pc_sample=args.pc_sample, clock=clock)
        watcher.preflight()
        sess.on_phase = watcher.set_phase
        threads.append(threading.Thread(target=swd_loop, args=(watcher, sess.stop), daemon=True))
    if args.uart_port or serial_fn:
        fn = serial_fn or (lambda stop: serial_logger(args.uart_port, args.uart_baud, args.out_dir, stop, clock))
        threads.append(threading.Thread(target=fn, args=(sess.stop,), daemon=True))
    sess.start()
    for t in threads:
        t.start()
    print("Keys: %s | 0=idle m=marker q=quit" % ", ".join("%s=%s" % kv for kv in sorted(keys.items())), flush=True)
    end = clock() + args.duration if args.duration else None
    try:
        with key_source as ks:
            while not sess.stop.is_set() and (end is None or clock() < end):
                sess.press(ks.get(0.05))
    except KeyboardInterrupt:
        pass
    sess.stop.set()
    for t in threads:
        t.join(timeout=2)
    sess.write_marks()
    if watcher:
        rows = sw.write_outputs(watcher, args.out_dir)
        print(sw.summary(watcher, rows))
    import analyze_session
    analyze_session.main([args.out_dir])
    return sess, watcher


def build_parser():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--out-dir", default="session-run")
    ap.add_argument("--keys", default=DEFAULT_KEYS, help="key=label list, e.g. '1=tilt forward,2=left pad'")
    ap.add_argument("--duration", type=float, default=0, help="seconds, 0 = until you press q")
    ap.add_argument("--global-keys", action="store_true", help="use pynput so keys work without terminal focus")
    ap.add_argument("--uart-port", help="sniffer serial port, e.g. COM5 or /dev/ttyACM0")
    ap.add_argument("--uart-baud", type=int, default=115200)
    ap.add_argument("--no-swd", action="store_true")
    ap.add_argument("--sram-size", type=lambda s: int(s, 0), default=0xB00)
    ap.add_argument("--peripheral", action="append")
    ap.add_argument("--unsafe-peripherals", action="store_true")
    ap.add_argument("--pc-sample", action="store_true")
    ap.add_argument("--probe-id")
    ap.add_argument("--freq", type=int, default=1_000_000)
    return ap


def main(argv=None):
    args = build_parser().parse_args(argv)
    ks = PynputKeys() if args.global_keys else ConsoleKeys()
    run(args, ks)


if __name__ == "__main__":
    main()
