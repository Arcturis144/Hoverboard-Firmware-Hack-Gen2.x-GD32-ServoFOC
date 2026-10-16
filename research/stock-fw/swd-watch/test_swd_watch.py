#!/usr/bin/env python3
"""Tests swd_watch.py against a SIMULATED target (no probe, no pyOCD, no hardware)."""
import argparse
import os
import struct
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import swd_watch as sw


class FakeBackend:
    """Memory that evolves each time it is read; records every call so we can assert read-only use."""

    def __init__(self, halted=False):
        self.mem = bytearray(0xB00)
        self.calls = []
        self.halted = halted
        self.demcr = 0
        self.n = 0
        self.stim_on = False
        self.pcs = [0x08002530, 0x08002530, 0x08004AC4, 0x08006E40, 0xFFFFFFFF]

    def read32(self, addr):
        self.calls.append(("read32", addr))
        if addr == sw.DHCSR:
            return sw.S_HALT if self.halted else 0
        if addr == sw.DEMCR:
            return self.demcr
        if addr == sw.DWT_PCSR:
            return self.pcs[self.n % len(self.pcs)]
        raise AssertionError("unexpected read32 0x%X" % addr)

    def read_block(self, addr, n):
        self.calls.append(("block", addr, n))
        self.n += 1
        off = addr - sw.SRAM_BASE
        self.mem[0x260] = (self.n // 3) % 5                         # motor_state_260 changes slowly
        struct.pack_into("<H", self.mem, 0x294, (self.n * 10922) & 0xFFFF)   # hall angle ramps
        self.mem[0x69] = 1 if self.n > 5 else 0                      # thermal flag latches once
        if self.stim_on:
            self.mem[0x150] = self.n & 0xFF                          # only moves while the stimulus is applied
        return bytes(self.mem[off:off + n])

    def write32_debug(self, addr, value):
        self.calls.append(("write32", addr, value))
        assert addr == sw.DEMCR, "only DEMCR may be written"
        self.demcr = value


def args(**kw):
    ns = argparse.Namespace(range=None, peripheral=None, unsafe_peripherals=False, series=None, pc_sample=False,
                            sram_size=0xB00, duration=0, interval=0, out_dir=None)
    for k, v in kw.items():
        setattr(ns, k, v)
    return ns


def fake_clock():
    t = [0.0]

    def clock():
        t[0] += 0.001
        return t[0]
    return clock


ram_map, funcs = sw.load_ram_map(), sw.load_functions()

# 1. name resolution prefers the most specific entry
assert sw.name_for_address(ram_map, 0x20000260) == "motor_state_260"
assert sw.name_for_address(ram_map, 0x20000269) == "phase_pwm_inhibit_269"
assert sw.name_for_address(ram_map, 0x20000294) == "hall_angle_294"
assert sw.name_for_address(ram_map, 0x20000295) == "hall_angle_294+1"
assert sw.name_for_address(ram_map, 0x20000270).startswith("hall_struct_268+")
assert sw.function_for_pc(funcs, 0x08002530) == "current_loop"
assert sw.function_for_pc(funcs, 0x08002531) == "current_loop"
assert sw.function_for_pc(funcs, 0x20000000) is None

# 2. safety checks
for bad, why in (([(0x08000000, 16)], "flash"), ([(0x20000000, 0x4000)], "beyond SRAM size"),
                 ([(0xE000ED00, 4)], "system control block"), ([(0x40013800, 16)], "USART needs --peripheral")):
    try:
        sw.check_ranges(bad, False, False, 0xB00)
        raise SystemExit("should have refused: " + why)
    except sw.SafetyError:
        pass
sw.check_ranges([(0x40012C00, 0x40)], True, False, 0xB00)         # TIMER0: allowed
for blocked in (0x40013800, 0x40004400, 0x40012400, 0x40022000):
    try:
        sw.check_ranges([(blocked, 4)], True, False, 0xB00)
        raise SystemExit("should have blocked 0x%X" % blocked)
    except sw.SafetyError:
        pass
sw.check_ranges([(0x40013800, 4)], True, True, 0xB00)             # explicit override

# 3. halted core is refused
try:
    sw.run(FakeBackend(halted=True), args(duration=1, out_dir=tempfile.mkdtemp()), ram_map, funcs, clock=fake_clock())
    raise SystemExit("halted core must be refused")
except sw.SafetyError:
    pass

# 4. normal run: activity map, series, PC histogram, outputs
fb = FakeBackend()
d = tempfile.mkdtemp()
w = sw.run(fb, args(duration=0.2, out_dir=d, pc_sample=True, series="motor_state_260,hall_angle_294"),
           ram_map, funcs, clock=fake_clock(), sleep=lambda s: None)
assert w.samples > 20
rows = {r["addr"]: r for r in w.activity_rows()}
assert rows["0x20000260"]["name"] == "motor_state_260" and rows["0x20000260"]["distinct_values"] == 5
assert rows["0x20000069"]["changes"] == 1                       # latched exactly once
assert rows["0x20000294"]["changes"] > 15                         # fast ramp
assert w.pc_hist["current_loop"] > w.pc_hist["six_sector_pwm"] > 0 and w.pc_none > 0
for f in ("activity.csv", "pc_hist.csv", "series.csv", "changes.jsonl"):
    assert os.path.getsize(os.path.join(d, f)) > 0, f
assert w.series and set(w.series[-1][1]) == {"motor_state_260", "hall_angle_294"}

# 5. only reads, plus exactly one allowed debug-register write
writes = [c for c in fb.calls if c[0] == "write32"]
assert writes == [("write32", sw.DEMCR, sw.TRCENA)], writes
fb2 = FakeBackend()
sw.run(fb2, args(duration=0.05, out_dir=tempfile.mkdtemp()), ram_map, funcs, clock=fake_clock(), sleep=lambda s: None)
assert not [c for c in fb2.calls if c[0] == "write32"], "no writes at all without --pc-sample"

# 6. stimulus labelling: a byte that only moves under "tilt forward" is reported, steady/baseline noise is not
fb3 = FakeBackend()
w3 = sw.Watcher(fb3, [(sw.SRAM_BASE, 0xB00)], ram_map, funcs, clock=fake_clock())
w3.preflight()
for _ in range(30):
    w3.sample()
w3.set_phase("tilt forward")
fb3.stim_on = True
for _ in range(30):
    w3.sample()
d3 = tempfile.mkdtemp()
sw.write_outputs(w3, d3)
st = sw.stimulus_rows(w3)
assert any(r[0] == "tilt forward" and r[1] == "0x20000150" for r in st), st
assert not any(r[1] == "0x20000260" for r in st), "slow state byte moves in both phases and must not be flagged"
assert os.path.getsize(os.path.join(d3, "phases.csv")) > 0 and os.path.getsize(os.path.join(d3, "stimulus.csv")) > 0
print(sw.summary(w3, w3.activity_rows(), top=3))

print("all swd_watch tests passed")
