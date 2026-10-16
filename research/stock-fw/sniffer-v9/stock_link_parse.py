#!/usr/bin/env python3
"""Decode a v8/v9 Blue Pill sniffer capture of the stock G5 board-to-board UART.

The link format comes from static analysis of the factory B firmware (see
FACTORY_FW_STEP7_UART_MODBUS_LINK.md): Modbus-RTU-style frames at 115200 8N1,
CRC-16/MODBUS (low byte first). Field layouts for function 0x78 come from the
code and are marked as such; what the fields *mean* is not yet established.

Usage:
  python3 stock_link_parse.py capture.txt              # decoded listing + statistics
  python3 stock_link_parse.py capture.txt --csv out.csv
  python3 stock_link_parse.py capture.txt --quiet      # statistics only

Input lines:  v9  "time_us dir len crc fn hex..."   v8  "time_us dir len hex..."
Lines starting with '#' and anything else that does not parse are ignored.
"""
import argparse
import csv
import re
import struct
import sys
from collections import Counter, defaultdict


def crc16_modbus(data):
    crc = 0xFFFF
    for b in data:
        crc ^= b
        for _ in range(8):
            crc = (crc >> 1) ^ 0xA001 if crc & 1 else crc >> 1
    return crc


HEXB = re.compile(r"^[0-9A-Fa-f]{2}$")


def parse_line(line):
    """-> (t_us32, dir, bytes) or None."""
    tok = line.split()
    if len(tok) < 4 or tok[1] not in ("M", "S") or not tok[0].isdigit():
        return None
    rest = tok[3:]
    if rest and rest[0] in ("OK", "BAD"):      # v9: crc fn hex...
        rest = rest[2:]
    if not rest or not all(HEXB.match(x) for x in rest):
        return None
    return int(tok[0]), tok[1], bytes(int(x, 16) for x in rest)


def read_capture(path):
    frames, wrap, prev = [], 0, None
    with open(path, errors="replace") as fh:
        for line in fh:
            if line.lstrip().startswith("#"):
                continue
            p = parse_line(line)
            if not p:
                continue
            t, d, data = p
            if prev is not None and t + (1 << 31) < prev:   # 32-bit microsecond wrap
                wrap += 1 << 32
            prev = t
            frames.append({"t": t + wrap, "dir": d, "data": data})
    return frames


def s16(b, i):
    return struct.unpack_from(">h", b, i)[0]


def u16(b, i):
    return struct.unpack_from(">H", b, i)[0]


def decode(fr):
    """Adds crc_ok, addr, fn, kind and a summary string to a frame dict."""
    b = fr["data"]
    fr["crc_ok"] = len(b) >= 4 and crc16_modbus(b) == 0
    fr["addr"] = b[0] if b else None
    fr["fn"] = b[1] if len(b) > 1 else None
    fr["kind"], fr["summary"] = "unknown", ""
    if not fr["crc_ok"]:
        fr["kind"], fr["summary"] = "bad-crc", "len=%d" % len(b)
        return fr
    fn, n = b[1], len(b)
    if fn & 0x80 and n == 5:
        fr["kind"], fr["summary"] = "exception", "fn=0x%02X exception code %d" % (fn & 0x7F, b[2])
    elif fn in (3, 4) and n == 8:
        fr["kind"] = "read-req"
        fr["summary"] = "start=%d qty=%d" % (u16(b, 2), u16(b, 4))
    elif fn in (3, 4) and n == 5 + b[2] and b[2] % 2 == 0:
        fr["kind"] = "read-resp"
        regs = [u16(b, 3 + 2 * i) for i in range(b[2] // 2)]
        fr["summary"] = "regs=" + " ".join("%04X" % r for r in regs)
    elif fn == 6 and n == 8:
        fr["kind"], fr["summary"] = "write-reg", "reg=%d value=0x%04X" % (u16(b, 2), u16(b, 4))
    elif fn == 0x78 and n == 17:
        # Layout read from the B firmware handler at 0x08005FB4 (field meanings unresolved).
        fr["kind"] = "cmd78"
        fr["summary"] = ("s16[2]=%d s16[4]=%d s16[6]=%d b8=0x%02X b9=0x%02X u16[10]=0x%04X b12=0x%02X b13=0x%02X b14=0x%02X"
                         % (s16(b, 2), s16(b, 4), s16(b, 6), b[8], b[9], u16(b, 10), b[12], b[13], b[14]))
    elif fn == 0x78 and n == 16:
        # Layout read from the reply builder at 0x08005274 (signedness of the 16-bit fields assumed).
        fr["kind"] = "reply78"
        fr["summary"] = ("s16[2]=%d s16[4]=%d s16[6]=%d b8=0x%02X b9=0x%02X u16[10]=0x%04X b12=0x%02X b13=0x%02X"
                         % (s16(b, 2), s16(b, 4), s16(b, 6), b[8], b[9], u16(b, 10), b[12], b[13]))
    else:
        fr["summary"] = "fn=0x%02X len=%d" % (fn, n)
    return fr


def stats(frames):
    out = []
    by = Counter((f["dir"], f["kind"]) for f in frames)
    out.append("frames: %d  (CRC bad: %d)" % (len(frames), sum(1 for f in frames if not f["crc_ok"])))
    for (d, k), c in sorted(by.items()):
        out.append("  %s %-10s %6d" % (d, k, c))
    addrs = defaultdict(set)
    for f in frames:
        if f["crc_ok"]:
            addrs[f["dir"]].add(f["addr"])
    for d in sorted(addrs):
        out.append("  addresses seen on %s: %s" % (d, ", ".join("0x%02X" % a for a in sorted(addrs[d]))))
    for kind in ("cmd78", "reply78"):
        ts = [f["t"] for f in frames if f["kind"] == kind]
        if len(ts) > 2:
            dts = [b - a for a, b in zip(ts, ts[1:])]
            out.append("  %s period: mean %.0f us, min %d, max %d (n=%d)" % (kind, sum(dts) / len(dts), min(dts), max(dts), len(ts)))
    # request -> reply latency for function 0x78 (reply = next 0x78 reply from the *other* line)
    lat, pending = [], None
    for f in frames:
        if f["kind"] == "cmd78":
            pending = f
        elif f["kind"] == "reply78" and pending is not None and f["dir"] != pending["dir"]:
            lat.append(f["t"] - (pending["t"]))
            pending = None
    if lat:
        out.append("  cmd78 -> reply78 start-to-start latency: mean %.0f us, min %d, max %d (n=%d)"
                   % (sum(lat) / len(lat), min(lat), max(lat), len(lat)))
    return "\n".join(out)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("capture")
    ap.add_argument("--csv", help="write one row per frame")
    ap.add_argument("--quiet", action="store_true", help="statistics only")
    a = ap.parse_args(argv)
    frames = [decode(f) for f in read_capture(a.capture)]
    if not a.quiet:
        for f in frames:
            print("%12d %s %-9s %s %s" % (f["t"], f["dir"], f["kind"], "ok " if f["crc_ok"] else "BAD", f["summary"]))
        print()
    print(stats(frames))
    if a.csv:
        with open(a.csv, "w", newline="") as fh:
            w = csv.writer(fh)
            w.writerow(["t_us", "dir", "kind", "crc_ok", "addr", "fn", "summary", "hex"])
            for f in frames:
                w.writerow([f["t"], f["dir"], f["kind"], int(f["crc_ok"]),
                            "" if f["addr"] is None else f["addr"], "" if f["fn"] is None else f["fn"],
                            f["summary"], f["data"].hex(" ")])
    return 0


if __name__ == "__main__":
    sys.exit(main())
