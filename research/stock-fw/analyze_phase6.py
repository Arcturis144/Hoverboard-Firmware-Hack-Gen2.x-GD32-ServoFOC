#!/usr/bin/env python3
"""Phase 6 read-only checks for the Gyroor G5 stock-firmware decoding.

Usage:  python3 -I analyze_phase6.py <A_master.bin> <A_alt.bin> <B_slave.bin>

No disassembler is required. Every B-side item is either a literal/table read
from a fixed address, or an exact comparison of the Thumb halfwords at a fixed
address with the encoding printed by `llvm-objdump -d --triple=thumbv7m` for
the B image (halfwords are written in listing order, e.g. "f44f 6280").
Nothing is written, flashed or modified.
"""
import difflib
import hashlib
import struct
import sys

BASE = 0x08000000
EXPECT = {
    "A": "c0d45253cc601ba1bc2291f3493203122bd9f66237e942f42b293d08a7a50c13",
    "A2": "7f311f8b87aa3f1d476b83cbf45c1b36440d59af48caea159f1e4ed6abb34718",
    "B": "f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6",
}
FAILS = []


def u32(img, a):
    return struct.unpack_from("<I", img, a - BASE)[0]


def s32(img, a):
    return struct.unpack_from("<i", img, a - BASE)[0]


def hwd(img, a):
    return struct.unpack_from("<H", img, a - BASE)[0]


def enc(img, a, text):
    """True if the halfwords at `a` equal the listing encoding `text`."""
    want = [int(t, 16) for t in text.split()]
    return [hwd(img, a + 2 * i) for i in range(len(want))] == want


def movw_imm(img, a):
    h1, h2 = hwd(img, a), hwd(img, a + 2)
    assert (h1 & 0xFBF0) == 0xF240, "not a movw at 0x%08X" % a
    return ((h1 & 0xF) << 12) | (((h1 >> 10) & 1) << 11) | (((h2 >> 12) & 7) << 8) | (h2 & 0xFF)


def check(label, ok):
    print("  [%s] %s" % ("ok" if ok else "FAIL", label))
    if not ok:
        FAILS.append(label)


def crc_two_table(img, msg=b"123456789"):
    t1, t2 = img[0x7120:0x7220], img[0x7220:0x7320]
    hi = lo = 0xFF
    for b in msg:
        i = lo ^ b
        lo = hi ^ t1[i]
        hi = t2[i]
    return (hi << 8) | lo


def words(b):
    return list(struct.unpack("<%dI" % (len(b) // 4), b))


def main(pa, pa2, pb):
    A, A2, B = (open(p, "rb").read() for p in (pa, pa2, pb))

    print("== 1. specimen identity")
    for n, img in (("A", A), ("A2", A2), ("B", B)):
        h = hashlib.sha256(img).hexdigest()
        check("%s sha256 %s... size %d" % (n, h[:16], len(img)), h == EXPECT[n] and len(img) == 65536)

    print("\n== 2. B: Hall state -> angle (Q16) from the TBB at 0x08002820")
    tbl = list(B[0x2820:0x2827])
    check("TBB entries (state 0..6) = 1a 08 10 0c 16 04 12", tbl == [0x1A, 0x08, 0x10, 0x0C, 0x16, 0x04, 0x12])
    targets = {s: 0x08002820 + 2 * e for s, e in enumerate(tbl)}
    ang = {
        1: movw_imm(B, targets[1]),
        5: movw_imm(B, targets[5]),
        6: movw_imm(B, targets[6]),
        4: 0x4000 if enc(B, targets[4], "f44f 4180") else None,           # mov.w r1,#0x4000
        3: 0xBFFF if enc(B, targets[3], "f46f 4180") else None,           # mvn   r1,#0x4000 -> 0xBFFF as halfword
        2: (u32(B, 0x08002A0C) & 0xFFFF) if enc(B, targets[2], "85a5") else None,  # strh r5 ; r5 = literal
    }
    check("state 0 target is the invalid-state path at 0x08002854", targets[0] == 0x08002854)
    for s in sorted(ang):
        print("    hall %d -> %s" % (s, ("0x%04X = %.1f deg" % (ang[s], ang[s] * 360 / 65536)) if ang[s] is not None else "ENCODING MISMATCH"))
    check("all six angles decoded", all(v is not None for v in ang.values()))
    order = sorted(ang, key=lambda s: ang[s])
    print("    ascending-angle order:", " -> ".join(map(str, order)))
    check("Hall bits assembled as PC13 | PA1<<1 | PC14<<2",
          enc(B, 0x08006AE6, "ea41 0142") and enc(B, 0x08006AEC, "ea41 0080"))
    check("per-tick step numerator 0x2AAA (=65536/6)", movw_imm(B, 0x08002980) == 0x2AAA)
    check("no-edge timeout `cmp r0,#0xc8`", enc(B, 0x080029B6, "28c8"))
    check("angle offset -30deg literal 0xFFFFEAAB at 0x08002A0C", u32(B, 0x08002A0C) == 0xFFFFEAAB)
    check("angle offset +30deg (movw 0x1555)", movw_imm(B, 0x080029CE) == 0x1555)

    print("\n== 3. B: PI initialiser at 0x0800378C")
    check("P numerator 100  (movs r2,#0x64)", enc(B, 0x08003794, "2264"))
    check("P divisor 1024   (mov.w r2,#0x400)", enc(B, 0x08003798, "f44f 6280"))
    check("I numerator 50   (movs r2,#0x32)", enc(B, 0x0800379E, "2232"))
    check("I divisor 8192   (mov.w r2,#0x2000)", enc(B, 0x080037A2, "f44f 5200"))
    check("output min -32767 (movw 0x8001) and max = min-2 -> +32767",
          movw_imm(B, 0x080037AE) == 0x8001 and enc(B, 0x080037B4, "1e80"))
    check("integrator limit literal = -268427264 (negated for the upper bound)", s32(B, 0x080037C8) == -268427264)

    print("\n== 4. B: TIMER0 init values (instruction encodings)")
    check("prescaler field = r4 = 0 (movs r4,#0)", enc(B, 0x08004DDC, "2400"))
    check("alignedmode 0x20 (center-aligned, compare flags on down-count)", enc(B, 0x08004E62, "2020"))
    check("period 2250 (movw 0x08CA)", movw_imm(B, 0x08004E68) == 0x08CA)
    check("clock-division field = r6<<7 with r6 = 2 (=0x100, tDTS = 2 x tCK)",
          enc(B, 0x08004DD0, "2602") and enc(B, 0x08004E6E, "01f0"))
    check("repetition counter 1 (movs r5,#1 ; strb r5,[sp,#0x3a])",
          enc(B, 0x08004E74, "2501") and enc(B, 0x08004E76, "f88d 503a"))
    check("CH0-2 OC mode 0x60 (PWM1), pulse 1125 (movw 0x0465)",
          enc(B, 0x08004E88, "2060") and movw_imm(B, 0x08004E9A) == 0x0465)
    check("CH3 OC mode 0x70 (PWM2), pulse 2249 (movw 0x08C9)",
          enc(B, 0x08004ED0, "2070") and movw_imm(B, 0x08004EDE) == 0x08C9)
    check("BDTR struct: OSSR=1<<11, OSSI=1<<10, LOCK=0, DEADTIME=0x1C, BREAK=0, BREAKPOL=0, AOE=0",
          enc(B, 0x08004DB8, "02cf") and enc(B, 0x08004F26, "02a8") and enc(B, 0x08004F30, "201c")
          and enc(B, 0x08004F36, "f8ad 4014") and enc(B, 0x08004F3A, "f8ad 4016") and enc(B, 0x08004F3E, "f8ad 4018"))
    check("BDTR helper writes TIMER0+0x44 (strh.w r2,[r0,#0x44])", enc(B, 0x08005540, "f8a0 2044"))
    check("POEN set/clear helper at 0x080055E0 touches bit 15 only",
          enc(B, 0x080055E8, "f441 4100") and enc(B, 0x080055F4, "f3c1 010e"))

    print("\n== 5. A/A2 vs B: slip structure and repair test")
    for label, X in (("A", A), ("A2", A2)):
        xw, bw = words(X[:0x8000]), words(B[:0x8000])
        ops = [o for o in difflib.SequenceMatcher(None, xw, bw, autojunk=False).get_opcodes() if o[0] != "equal"]
        dele = [o for o in ops if o[0] == "delete"]
        on_1k = sum(1 for _, i1, i2, _, _ in dele if (4 * i1) % 0x400 == 0 or (4 * i2) % 0x400 == 0)
        print("  %s: %d word-level ops (%d insert, %d delete, %d replace); %d of %d extra-word runs touch a 0x400 boundary"
              % (label, len(ops), sum(o[0] == "insert" for o in ops), len(dele), sum(o[0] == "replace" for o in ops), on_1k, len(dele)))
        out = bytearray()
        for t, i1, i2, j1, j2 in difflib.SequenceMatcher(None, X[:0x8000], B[:0x8000], autojunk=False).get_opcodes():
            if t == "equal":
                out += X[i1:i2]
            elif t == "insert":                # B has bytes the dump lacks -> restore them
                out += B[j1:j2]
            elif t == "replace":               # genuine difference (or alignment artifact) -> keep the dump's bytes
                out += X[i1:i2]
            # 'delete' = extra (duplicated) bytes in the dump -> dropped
        R = bytes(out[:0x8000]).ljust(0x8000, b"\xff")
        c = crc_two_table(R)
        check("%s repaired: CRC('123456789') from the image's own tables = 0x%04X (want 0x4B37)" % (label, c), c == 0x4B37)
        check("%s repaired: CRC tables and sine table byte-identical to B" % label,
              R[0x7120:0x7320] == B[0x7120:0x7320] and R[0x73A6:0x75A8] == B[0x73A6:0x75A8])
        resid = [i for i in range(0x8000) if R[i] != B[i]]
        clusters = []
        for p in resid:
            if clusters and p - clusters[-1][1] <= 16:
                clusters[-1][1] = p
            else:
                clusters.append([p, p])
        print("     residual differing bytes vs B: %d in %d cluster(s): %s"
              % (len(resid), len(clusters), ", ".join("0x%04X-0x%04X" % tuple(c) for c in clusters[:8])))
    print("  note: repair copies B's bytes into gaps, so it shows the dumps agree where they have data;")
    print("        it does not prove the true master image, and the result must never be flashed.")
    print("  bit-flip site: B has `bdfb 0546` ; A has it: %s ; A2 has the flipped `bdfb 05c6`: %s"
          % (A.find(bytes.fromhex("bdfb0546")) >= 0, A2.find(bytes.fromhex("bdfb05c6")) >= 0))

    print("\n== 6. persistent parameter page: 10 x int16 at 0x08007C00 (B)")
    pbv = struct.unpack("<10h", B[0x7C00:0x7C14])
    # Master page: the raw reads A and A2 agree at 0x7C00; the word at 0x7BFC in both is block-end padding
    # (a copy of the next block's first word), not page data. Corrected in Phase 8; Phase 6 originally
    # started the page at that padding word and so shifted every master slot from index 2 on.
    off = 0x7C00 if A[0x7C00:0x7C14] == A2[0x7C00:0x7C14] else -1
    pav = struct.unpack("<10h", A2[off:off + 20]) if off >= 0 else None
    check("loader destination base literal at 0x08005360 = 0x20000210", u32(B, 0x08005360) == 0x20000210)
    check("flag literal at 0x08005364 = 0x2000021E; slots 8/9 -> 0x2000008A / 0x2000008C",
          u32(B, 0x08005364) == 0x2000021E and u32(B, 0x08005368) == 0x2000008A and u32(B, 0x0800536C) == 0x2000008C)
    dest = [0x20000210, 0x20000212, 0x20000214, 0x20000216, 0x20000218, 0x2000021A, 0x2000019A, 0x2000019C, 0x2000008A, 0x2000008C]
    print("  idx  RAM destination   B(slave)  A2(master)")
    for i, d in enumerate(dest):
        print("  %2d   0x%08X   %8d   %s" % (i, d, pbv[i], pav[i] if pav else "n/a"))
    check("B's last two halfwords = 0x0400,0x4800 = GPIOB base 0x48000400 (stack-leak signature)",
          struct.unpack("<I", B[0x7C10:0x7C14])[0] == 0x48000400)
    check("raw A and A2 agree on the master page at 0x7C00; 0x7BFC holds the same word as 0x7C00 (padding)",
          off >= 0 and A[0x7BFC:0x7C00] == A[0x7C00:0x7C04] and A2[0x7BFC:0x7C00] == A2[0x7C00:0x7C04])

    print("\nRESULT: %s" % ("all checks passed" if not FAILS else "%d FAILED: %s" % (len(FAILS), "; ".join(FAILS))))
    return 1 if FAILS else 0


if __name__ == "__main__":
    if len(sys.argv) != 4:
        sys.exit(__doc__)
    sys.exit(main(*sys.argv[1:]))
