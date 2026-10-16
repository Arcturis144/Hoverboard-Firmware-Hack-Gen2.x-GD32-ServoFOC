#!/usr/bin/env python3
"""Tests session.py + analyze_session.py with scripted key presses, a simulated target and simulated
sniffer lines. No hardware, no pyserial, no pyOCD."""
import csv
import os
import struct
import sys
import tempfile
import time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
sys.path.insert(0, os.path.join(HERE, "..", "swd-watch"))
sys.path.insert(0, os.path.join(HERE, "..", "sniffer-v9"))
import session as S
import stock_link_parse as slp
import swd_watch as sw

# ---- key parsing -------------------------------------------------------------------------------
keys = S.parse_keys("1=tilt forward,2=left pad pressed")
assert keys == {"1": "tilt forward", "2": "left pad pressed"}
for bad in ("0=x", "m=x", "q=x", "12=x", "1="):
    try:
        S.parse_keys(bad)
        raise SystemExit("should reject " + bad)
    except ValueError:
        pass

# ---- simulated world ---------------------------------------------------------------------------
T0 = [None]
TILT = (0.45, 1.4)     # seconds after start during which the "stimulus" is applied


def now():
    return time.perf_counter()


def elapsed():
    return now() - T0[0] if T0[0] else 0.0


class FakeBackend:
    def __init__(self):
        self.mem = bytearray(0xB00)
        self.writes = []

    def read32(self, a):
        return 0 if a == sw.DHCSR else 0

    def read_block(self, a, n):
        if TILT[0] <= elapsed() < TILT[1]:
            self.mem[0x150] = (self.mem[0x150] + 1) & 0xFF      # moves only under the stimulus
        return bytes(self.mem[a - sw.SRAM_BASE:a - sw.SRAM_BASE + n])

    def write32_debug(self, a, v):
        self.writes.append((a, v))


def frame(kind, s4):
    body = bytes([2, 0x78]) + struct.pack(">hhh", 10, s4, 0) + bytes([1, 2]) + struct.pack(">H", 7) + bytes([3, 4])
    if kind == "cmd78":
        body += bytes([5])
    crc = slp.crc16_modbus(body)
    return body + struct.pack("<H", crc)


def fake_serial(out_dir):
    def fn(stop):
        with open(os.path.join(out_dir, "uart_timed.csv"), "w", newline="") as fh:
            w = csv.writer(fh)
            w.writerow(["t_s", "line"])
            us = 1000
            while not stop.is_set():
                s4 = 500 if TILT[0] <= elapsed() < TILT[1] else 0
                for d, kind in (("M", "cmd78"), ("S", "reply78")):
                    data = frame(kind, s4)
                    w.writerow(["%.6f" % now(), "%d %s %d OK 78 %s" % (us, d, len(data), " ".join("%02X" % x for x in data))])
                us += 5000
                time.sleep(0.005)
    return fn


out = tempfile.mkdtemp()
args = S.build_parser().parse_args(["--out-dir", out, "--keys", "1=tilt forward,2=left pad pressed", "--pc-sample"])
script = [(0.40, "1"), (0.90, "m"), (1.40, "0"), (1.90, "q")]
T0[0] = now()
fb = FakeBackend()
sess, watcher = S.run(args, S.ScriptedKeys(script, now), backend=fb, serial_fn=fake_serial(out), clock=now)

# ---- assertions --------------------------------------------------------------------------------
labels = [(m[2], m[3]) for m in sess.marks]
assert labels == [("idle", "phase"), ("tilt forward", "phase"), ("marker", "point"), ("idle", "phase")], labels
for f in ("marks.csv", "uart_timed.csv", "activity.csv", "phases.csv", "stimulus.csv", "uart_stimulus.csv"):
    assert os.path.getsize(os.path.join(out, f)) > 0, f
st = {(r[0], r[1]) for r in sw.stimulus_rows(watcher)}
assert ("tilt forward", "0x20000150") in st, st
with open(os.path.join(out, "uart_stimulus.csv")) as fh:
    rows = list(csv.DictReader(fh))
flagged = {(r["kind"], r["field"], r["label"]) for r in rows}
assert ("cmd78", "s16@4", "tilt forward") in flagged and ("reply78", "s16@4", "tilt forward") in flagged, flagged
assert not any(r["field"] != "s16@4" for r in rows), "only the field that moved may be flagged: %s" % rows
assert fb.writes == [(sw.DEMCR, sw.TRCENA)] or fb.writes == [], fb.writes
print("all session tests passed")
