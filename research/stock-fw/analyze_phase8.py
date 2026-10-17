#!/usr/bin/env python3
"""Phase 8 read-only checks: factory B against hoverboardhavoc's Rust re-implementation.

Usage:  python3 -I analyze_phase8.py <B_slave.bin>

Checks the tables and literals that hoverboardhavoc/hoverboard-firmware
(commit 67146222919ab46c3d50c94262d0d30ba5c86200, crates/commutation/src/foc.rs)
claims for the stock firmware against the B image. Tables are read at fixed
B addresses; literals are counted by searching aligned 32-bit words, so a
failed literal search means "not present as a literal-pool word", not "absent
from the code" (a constant can also be a movw/mov immediate).

No disassembler is required. Nothing is written, flashed or modified.
"""
import hashlib
import math
import struct
import sys

BASE = 0x08000000
EXPECT_B = "f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6"
FAILS = []

# foc.rs CIRC_GAIN: 67-entry Q15 circular-limit gain table,
# indexed by ((d*d + q*q) >> 24) - 0x3D.
CIRC_GAIN = [
    32494, 32360, 32096, 31839, 31587, 31342, 31102, 30868, 30639, 30415,
    30196, 29981, 29771, 29565, 29464, 29265, 29069, 28878, 28690, 28506,
    28325, 28148, 27974, 27803, 27635, 27470, 27309, 27229, 27071, 26916,
    26764, 26614, 26467, 26322, 26180, 26039, 25901, 25766, 25632, 25500,
    25435, 25307, 25180, 25055, 24932, 24811, 24692, 24574, 24458, 24343,
    24230, 24119, 24009, 23901, 23848, 23741, 23637, 23533, 23431, 23331,
    23231, 23133, 23036, 22941, 22846, 22753, 22661,
]

# foc.rs SIN_QUARTER: round(32767 * sin((i/256) * pi/2)), i = 0..255.
SIN_QUARTER = [int(round(32767 * math.sin((i / 256) * (math.pi / 2)))) for i in range(256)]

# B addresses from Phases 2 and 6.
CRC_TABLES_END = 0x08007320   # end of the two CRC-16/MODBUS tables (analyze_phase6.py: 0x7120..0x7320)
CIRC_TABLE = 0x08007320       # circular-limit rescale table (Phase 5/6: lookup table at 0x08007320)
SINE_TABLE = 0x080073A6       # quarter-wave sine table (Phase 4/6)

# 32-bit literal-pool words foc.rs relies on.
LITERALS = {
    0x3D759621: "circular-limit threshold (32111^2)",
    0xF0002000: "PI integrator low bound (-268,427,264)",
}


def h16s(img, a, n):
    return list(struct.unpack_from("<%dh" % n, img, a - BASE))


def check(label, ok, detail=""):
    print("  [%s] %s%s" % ("ok" if ok else "FAIL", label, ("  (" + detail + ")") if detail else ""))
    if not ok:
        FAILS.append(label)


def first_mismatch(got, want):
    for i, (g, w) in enumerate(zip(got, want)):
        if g != w:
            return "first mismatch at index %d: image %d, foc.rs %d" % (i, g, w)
    return ""


def main(pb):
    img = open(pb, "rb").read()
    digest = hashlib.sha256(img).hexdigest()
    print("B: %s  %d bytes  sha256 %s" % (pb, len(img), digest[:16]))
    check("B image hash matches Phases 3-6", digest == EXPECT_B)

    print("\nTable layout")
    check("circle table spans exactly 67 halfwords up to the sine table",
          SINE_TABLE - CIRC_TABLE == 2 * len(CIRC_GAIN),
          "0x%X..0x%X" % (CIRC_TABLE, SINE_TABLE))
    check("circle table starts where the CRC tables end", CIRC_TABLE == CRC_TABLES_END)

    print("\nCircular-limit gain table (foc.rs CIRC_GAIN)")
    got = h16s(img, CIRC_TABLE, len(CIRC_GAIN))
    check("67 entries equal foc.rs", got == CIRC_GAIN, first_mismatch(got, CIRC_GAIN))
    check("gains non-increasing", all(a >= b for a, b in zip(got, got[1:])))

    print("\nQuarter-wave sine table (foc.rs SIN_QUARTER)")
    got = h16s(img, SINE_TABLE, 256)
    check("256 entries equal round(32767*sin(i/256*pi/2))", got == SIN_QUARTER,
          first_mismatch(got, SIN_QUARTER))
    check("anchors 0, 201, 23027, 23170, 32766",
          (got[0], got[1], got[127], got[128], got[255]) == (0, 201, 23027, 23170, 32766))

    print("\nLiteral-pool words")
    words = struct.unpack_from("<%dI" % (len(img) // 4), img)
    for value, what in LITERALS.items():
        hits = [BASE + 4 * i for i, w in enumerate(words) if w == value]
        check("0x%08X %s" % (value, what), bool(hits),
              ", ".join("0x%08X" % h for h in hits[:4]) or "no aligned literal found")

    print("\nRESULT: %s" % ("all checks passed" if not FAILS
                            else "%d FAILED: %s" % (len(FAILS), "; ".join(FAILS))))
    return 1 if FAILS else 0


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print(__doc__)
        sys.exit(2)
    sys.exit(main(sys.argv[1]))
