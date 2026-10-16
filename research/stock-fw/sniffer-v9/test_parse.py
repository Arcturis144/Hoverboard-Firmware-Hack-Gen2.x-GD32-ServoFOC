#!/usr/bin/env python3
"""Self-test for stock_link_parse.py using SYNTHETIC frames built from the layouts in the
Phase 7 report. It checks the parser, not the real hardware: no real capture exists yet."""
import os
import struct
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import stock_link_parse as p


def framed(body):
    return body + struct.pack("<H", p.crc16_modbus(body))


def line(t, d, data, v9=True):
    hexs = " ".join("%02X" % x for x in data)
    if v9:
        ok = "OK" if p.crc16_modbus(data) == 0 else "BAD"
        return "%d %s %d %s %02X %s" % (t, d, len(data), ok, data[1], hexs)
    return "%d %s %d %s" % (t, d, len(data), hexs)


cmd = framed(bytes([0x02, 0x78]) + struct.pack(">hhh", 300, -200, 0) + bytes([0x04, 0x25]) + struct.pack(">H", 0x1234) + bytes([1, 2, 3]))
rep = framed(bytes([0x02, 0x78]) + struct.pack(">hhh", 10, 20, 30) + bytes([5, 6]) + struct.pack(">H", 7) + bytes([8, 9]))
rd_req = framed(bytes([0x02, 0x03, 0, 0, 0, 4]))
rd_rsp = framed(bytes([0x02, 0x03, 8, 0, 1, 0, 2, 0, 3, 0, 4]))
wr = framed(bytes([0x02, 0x06, 0, 5, 0x12, 0x34]))
exc = framed(bytes([0x02, 0x81, 1]))
assert len(cmd) == 17 and len(rep) == 16

bad = bytearray(cmd)
bad[5] ^= 1
lines = [
    "# err M drop=0 fe=0 ne=0 ore=0 | S drop=0 fe=0 ne=0 ore=0",
    "G5 sniffer v9 C6/HID",
    line(4294960000, "M", cmd),            # 32-bit time wraps here
    line(4294960400, "S", rep),
    line(5000, "M", cmd),
    line(5500, "S", rep),
    line(9000, "M", rd_req, v9=False),     # v8 style line
    line(9400, "S", rd_rsp),
    line(10000, "M", wr),
    line(10500, "S", exc),
    line(11000, "M", bytes(bad)),
    "garbage line that must be ignored",
]

with tempfile.TemporaryDirectory() as d:
    path = os.path.join(d, "cap.txt")
    with open(path, "w") as fh:
        fh.write("\n".join(lines) + "\n")
    frames = [p.decode(f) for f in p.read_capture(path)]

kinds = [f["kind"] for f in frames]
assert kinds == ["cmd78", "reply78", "cmd78", "reply78", "read-req", "read-resp", "write-reg", "exception", "bad-crc"], kinds
assert frames[2]["t"] > frames[1]["t"], "time must unwrap across the 32-bit boundary"
assert frames[2]["t"] - frames[0]["t"] == (5000 + (1 << 32)) - 4294960000
assert "s16[2]=300 s16[4]=-200" in frames[0]["summary"]
assert "regs=0001 0002 0003 0004" in frames[5]["summary"]
assert "reg=5 value=0x1234" in frames[6]["summary"]
assert "exception code 1" in frames[7]["summary"]
text = p.stats(frames)
assert "CRC bad: 1" in text and "cmd78 -> reply78" in text, text
assert p.crc16_modbus(b"123456789") == 0x4B37
print("all parser tests passed")
