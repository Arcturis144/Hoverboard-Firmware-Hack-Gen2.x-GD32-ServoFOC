#!/usr/bin/env python3
"""Phase 7 checks: the stock B/slave UART link is Modbus-RTU-style.

Usage: python3 -I analyze_phase7_uart.py <factory-B.bin>

Every check compares exact Thumb halfwords/words at fixed addresses in the
factory B dump (flash base 0x08000000), plus an emulation of the on-chip CRC
routine against a textbook CRC-16/MODBUS. It prints PASS/FAIL per item and
exits non-zero on any failure. It reads the file only; nothing is written.
"""
import random
import struct
import sys

BASE = 0x08000000


def load(path):
    with open(path, "rb") as f:
        img = f.read()
    if len(img) < 0x8000:
        sys.exit("image too short")
    return img


def hw(img, addr):
    return struct.unpack_from("<H", img, addr - BASE)[0]


def word(img, addr):
    return struct.unpack_from("<I", img, addr - BASE)[0]


FAILS = []


def check(name, ok, detail=""):
    print("%-4s %s%s" % ("PASS" if ok else "FAIL", name, (" -- " + detail) if detail else ""))
    if not ok:
        FAILS.append(name)


def expect_hw(img, label, items):
    bad = [(hex(a), "%04x" % v, "%04x" % hw(img, a)) for a, v in items if hw(img, a) != v]
    check(label, not bad, "mismatches (addr, want, got): %s" % bad if bad else "")


def crc16_modbus(data):
    crc = 0xFFFF
    for b in data:
        crc ^= b
        for _ in range(8):
            crc = (crc >> 1) ^ 0xA001 if crc & 1 else crc >> 1
    return crc


def crc_stock(img, data):
    """Emulate 0x08006E38: two 256-byte tables at 0x08007120 / 0x08007220."""
    t1 = img[0x7120:0x7220]
    t2 = img[0x7220:0x7320]
    lo = hi = 0xFF
    for b in data:
        i = b ^ lo
        lo = t1[i] ^ hi
        hi = t2[i]
    return lo | (hi << 8)


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    img = load(sys.argv[1])

    # --- UART bring-up: 115200 8N1 on USART1 (PA2/PA3, AF1) -----------------
    expect_hw(img, "init call args: 0x480*100 baud, 8 bits, no parity, 1 stop",
              [(0x8006B9A, 0x2301), (0x8006B9C, 0x2200), (0x8006B9E, 0x2108), (0x8006BA0, 0xF44F),
               (0x8006BA2, 0x6090)])
    check("0x480 * 100 == 115200", 0x480 * 100 == 115200)
    expect_hw(img, "USART init body multiplies the first argument by 100",
              [(0x8006FF8, 0x2064), (0x8006FFA, 0xFB0B), (0x8006FFC, 0xFB00)])
    expect_hw(img, "PA2/PA3 alternate function 1 (USART1 TX/RX)",
              [(0x8006FBE, 0x2201), (0x8006FC0, 0x2102), (0x8006FC8, 0x2201), (0x8006FCA, 0x2103)])
    check("USART1 base literal 0x40004400 at 0x08007098", word(img, 0x8007098) == 0x40004400)
    check("vector 0xB0 (IRQ28) -> 0x08005C84", word(img, BASE + 0xB0) & ~1 == 0x8005C84)
    check("idle-line test constant 0x00040104 / USART1 base in ISR pool",
          word(img, 0x8005D10) == 0x00040104 and word(img, 0x8005D14) == 0x40004400)
    check("ISR uses DMA channel 5 (0x40020058)", word(img, 0x8005D18) == 0x40020058)
    expect_hw(img, "ISR: frame length = 32 - DMA counter; frame state set to 2",
              [(0x8005CA6, 0xF1C0), (0x8005CA8, 0x0020), (0x8005CF8, 0x2002), (0x8005CFA, 0x7020)])

    # --- frame handler 0x08006E64 ------------------------------------------
    expect_hw(img, "frame-ready state must equal 2",
              [(0x8006E6A, 0x2802)])
    expect_hw(img, "byte0 compared with the halfword at 0x20000224, CRC over whole frame must be 0",
              [(0x8006E76, 0x7820), (0x8006E78, 0x88D2), (0x8006E7A, 0x4290), (0x8006E80, 0xF7FF),
               (0x8006E84, 0x2800), (0x8006E86, 0xD13D)])
    check("literals: len byte 0x20000238, rx buffer 0x20000478, address halfword base 0x2000021E",
          word(img, 0x8006F08) == 0x20000238 and word(img, 0x8006F0C) == 0x20000478
          and word(img, 0x8006F10) == 0x2000021E)
    expect_hw(img, "function-code dispatch: 1,2,3,4,5,6,0x0F,0x10,0x78",
              [(0x8006E8A, 0x2805), (0x8006E90, 0x2801), (0x8006E94, 0x2802), (0x8006E98, 0x2803),
               (0x8006E9C, 0x2804), (0x8006EA2, 0x2806), (0x8006EA6, 0x280F), (0x8006EAA, 0x2810),
               (0x8006EAE, 0x2878)])
    expect_hw(img, "unknown function -> exception code 1 (OR 0x80 into the function byte)",
              [(0x8006EB6, 0x2001), (0x8006F1A, 0xF041), (0x8006F1C, 0x0180)])
    expect_hw(img, "handlers for functions 1, 2, 5, 0x0F and 0x10 are bare returns (bx lr)",
              [(0x80046A8, 0x4770), (0x80047B4, 0x4770), (0x8005F70, 0x4770), (0x8005F6C, 0x4770),
               (0x8005F6E, 0x4770)])
    expect_hw(img, "fn 3 / fn 4: quantity 1..0x7C, start+qty <= 0x20, banks 0x200003F8 / 0x20000438",
              [(0x80046C2, 0x1E60), (0x80046C4, 0x287C), (0x80046D4, 0x2820), (0x80046EA, 0x3F80),
               (0x8004746, 0x1E60), (0x8004748, 0x287C), (0x8004756, 0x1928), (0x8004758, 0x2820),
               (0x800476E, 0x3F40)])
    expect_hw(img, "fn 3/4 exceptions: 3 for bad quantity, 2 for bad range",
              [(0x80046CC, 0x2003), (0x80046DC, 0x2002), (0x8004750, 0x2003)])
    expect_hw(img, "fn 6: write halfword to bank[start] (no bounds check in this path), echo reply",
              [(0x8005F86, 0xF1A4), (0x8005F88, 0x0180), (0x8005F8A, 0xF821), (0x8005F8C, 0x0013),
               (0x8005F94, 0x2106), (0x8005FA4, 0x2108)])
    check("response words are big-endian, CRC little-endian",
          hw(img, 0x80047B6) == 0x0A0A and hw(img, 0x80047B8) == 0x7002 and hw(img, 0x80047BA) == 0x7041
          and hw(img, 0x80047BE) == 0x7001 and hw(img, 0x80047C0) == 0x0A09 and hw(img, 0x80047C2) == 0x7041)

    # --- function 0x78 -------------------------------------------------------
    expect_hw(img, "fn 0x78 request: signed BE halfwords at bytes 2, 4, 6; single bytes at 8, 9, 12, 13, 14",
              [(0x8005FBE, 0x7881), (0x8005FC0, 0x78C2), (0x8005FCA, 0xFA0F), (0x8005FCE, 0x7901),
               (0x8005FDC, 0x7981), (0x8005FD2, 0xF890), (0x8005FD4, 0xC008), (0x8005FE0, 0x7A43),
               (0x8005FEA, 0x7A84), (0x8005FEC, 0x7AC5), (0x8005FEE, 0xF890), (0x8005FF0, 0x900C),
               (0x8005FF2, 0x7B46), (0x8006158, 0x7B80)])
    check("fn 0x78 branches on the role byte at 0x2000021E",
          hw(img, 0x8005FC2) == 0xF89A and hw(img, 0x8005FC4) == 0xE000
          and hw(img, 0x8005FF8) == 0xF1BE and hw(img, 0x8005FFC) == 0xD075)
    expect_hw(img, "fn 0x78 reply: addr, 0x78, 3 x i16 BE, 2 bytes, i16 BE, 2 bytes, 14 bytes + CRC = 16 total",
              [(0x8005284, 0x2178), (0x8005286, 0x7041), (0x80052AA, 0x7201), (0x80052B0, 0x7241),
               (0x80052C0, 0x7301), (0x80052C6, 0x7341), (0x80052C8, 0x210E), (0x80052D2, 0x300E),
               (0x80052D8, 0x2110)])
    check("reply sources 0x3C, 0xA2, 0x96, 0x72, 0x71, 0x9A, 0x141, 0x16E (RAM 0x200000..)",
          [word(img, a) & 0xFFFF for a in (0x80052EC, 0x80052F0, 0x80052F4, 0x80052F8, 0x80052FC,
                                           0x8005300, 0x8005304, 0x8005308)]
          == [0x3C, 0xA2, 0x96, 0x72, 0x71, 0x9A, 0x141, 0x16E])

    # --- CRC ------------------------------------------------------------------
    check("CRC routine init 0xFFFF, tables at 0x08007120 / 0x08007220",
          hw(img, 0x8006E3A) == 0x23FF and hw(img, 0x8006E3C) == 0x22FF and word(img, 0x8006E60) == 0x08007120)
    check("stock CRC(\"123456789\") == 0x4B37 (CRC-16/MODBUS check value)",
          crc_stock(img, b"123456789") == 0x4B37 == crc16_modbus(b"123456789"))
    rng = random.Random(1441)
    ok = True
    for n in range(2000):
        msg = bytes(rng.randrange(256) for _ in range(rng.randrange(1, 40)))
        ok &= crc_stock(img, msg) == crc16_modbus(msg)
        framed = msg + struct.pack("<H", crc16_modbus(msg))
        ok &= crc_stock(img, framed) == 0   # receiver accepts when the residue is 0
    check("stock table CRC == textbook CRC-16/MODBUS on 2000 random messages; frame+CRC(LE) residue 0", ok)

    print("\nRESULT:", "all checks passed" if not FAILS else "FAILED: %s" % FAILS)
    sys.exit(1 if FAILS else 0)


if __name__ == "__main__":
    main()
