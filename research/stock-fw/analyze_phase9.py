#!/usr/bin/env python3
"""Phase 9 read-only checks: what the stock firmware does with PB1 (and PB2).

Usage:  python3 -I analyze_phase9.py <oriFWB.bin> <master_reconstructed.bin>

No disassembler is required. Each claim is checked as either
  - an exact comparison of Thumb halfwords at a fixed address with the encoding
    printed by `llvm-objdump -d --triple=thumbv7m` for the B image, or
  - a literal-pool word, or
  - a full scan of the code half for Thumb-2 BL / B.W (T4) instructions, so a
    caller of the GPIO helpers that this report missed would show up as an
    unexpected call site.
The BL/B.W scan decodes raw halfwords, so a data word could in principle
decode as a call; any such hit appears as "unexpected" and needs reading.

Nothing is written, flashed or modified.
"""
import hashlib
import struct
import sys

BASE = 0x08000000
EXPECT = {
    "B": "f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6",
    "M": "6b800aa68c224284e9560e8319a414b297adc6a7980242e166e5009c407559b6",
}
FAILS = []

GPIO_INIT = 0x080026BC   # gpio_init(port, {u32 pins; u8 mode, speed, otype, pupd})
GPIO_AF = 0x08002734     # gpio_af(port, pin, af)
PIN_CLR = 0x08002762     # str r1, [r0, #0x28]  -> GPIOx_BC  (drive low)
PIN_SET = 0x08002766     # str r1, [r0, #0x18]  -> GPIOx_BOP (drive high)

# Every BL / B.W to the four helpers found in B by tracing (Phase 9 report, section 3).
EXPECTED_SITES = {
    GPIO_INIT: {0x08001908, 0x08001C9A, 0x080027AC, 0x080027BE, 0x080027CE, 0x08002ABC,
                0x08002AC8, 0x08003242, 0x080032C0, 0x0800334E, 0x08003370, 0x08004144,
                0x080047EE, 0x08004A10, 0x08004A1A, 0x08004A26, 0x08004A32, 0x08004DEE,
                0x08004E2C, 0x08005012, 0x08006FF4},
    GPIO_AF: {0x08004DF8, 0x08004E02, 0x08004E0C, 0x08004E36, 0x08004E40, 0x08004E4A,
              0x08006FC4, 0x08006FCE},
}
# PB1/PB2 drive sites (pin mask 0x2 = PB1, 0x4 = PB2, 0x3E = PB1..PB5), port GPIOB.
PB12_SITES = [
    # (call address, movs r1 address, expected movs encoding, helper, what)
    (0x08001972, 0x0800196E, "2102", PIN_CLR, "indicator flash: PB1 low"),
    (0x0800197E, 0x0800197C, "2104", PIN_CLR, "indicator flash: PB2 low (tail call)"),
    (0x080019B2, 0x080019AE, "2102", PIN_SET, "indicator flash: PB1 high"),
    (0x080019BE, 0x080019BC, "2104", PIN_SET, "indicator flash: PB2 high (tail call)"),
    (0x08003378, 0x08003374, "213e", PIN_SET, "board GPIO init: PB1..PB5 high"),
    (0x08006D42, 0x08006D3E, "2102", PIN_CLR, "main loop, slot 9 != 0: PB1 low"),
    (0x08006D4A, 0x08006D46, "2104", PIN_SET, "main loop, slot 9 != 0: PB2 high"),
    (0x08006D56, 0x08006D52, "2102", PIN_SET, "main loop, slot 9 == 0: PB1 high"),
    (0x08006D5E, 0x08006D5A, "2104", PIN_CLR, "main loop, slot 9 == 0: PB2 low"),
]

# Exact encodings (B listing) for the remaining claims.
ENCODINGS = [
    (0x08002762, "6281", "PIN_CLR body: str r1,[r0,#0x28] (GPIO BC)"),
    (0x08002766, "6181", "PIN_SET body: str r1,[r0,#0x18] (GPIO BOP)"),
    (0x08002722, "790c", "gpio_init: mode byte at struct+4"),
    (0x0800272A, "6004", "gpio_init: mode written to GPIOx_CTL"),
    (0x080026E6, "794f", "gpio_init: speed byte at struct+5"),
    (0x080026F8, "798c", "gpio_init: otype byte at struct+6"),
    (0x08002700, "6043", "gpio_init: otype written to GPIOx_OMODE"),
    (0x0800270E, "79cf", "gpio_init: pupd byte at struct+7"),
    (0x08003334, "2501", "board GPIO init: r5 = 1 (mode output)"),
    (0x0800333A, "2703", "board GPIO init: r7 = 3 (speed)"),
    (0x08003340, "2600", "board GPIO init: r6 = 0 (push-pull)"),
    (0x0800335A, "203e 9000", "board GPIO init: pins 0x3E (PB1..PB5) -> struct"),
    (0x0800335E, "f88d 5004 f88d 7005 f88d 6006", "board GPIO init: mode/speed/otype; pupd byte NOT written"),
    (0x08006B00, "f7fc fc0e", "start-up calls board GPIO init 0x08003320"),
    (0x080049F4, "2401", "ADC pin init: r4 = 1 (pin mask)"),
    (0x08004A14, "9400", "ADC pin init: GPIOB analog pins = r4 = 0x1 (PB0 only)"),
    (0x08006B40, "6930 04c0 d502", "boot: read GPIOA ISTAT, test bit 12 (PA12, BUTTON)"),
    (0x08006B5A, "2964", "boot: 100 samples"),
    (0x08006B66, "2802 d902 f886 8000", "boot: more than 2 high reads -> 0x2000021E = 1"),
    (0x08006B70, "7034", "boot: otherwise 0x2000021E = 0"),
    (0x08006D34, "b9a8", "main loop: skip PB1/PB2 block if 0x2000021E != 0"),
    (0x08006D3A, "b148", "main loop: branch on slot 9 (0x2000008C)"),
    (0x08006BD4, "2132 4875 f7fd fe64", "indicator task 0x08001A84 registered unconditionally"),
    (0x08004E32, "210d", "AF pins on GPIOB: 13"),
    (0x08004E3C, "210e", "AF pins on GPIOB: 14"),
    (0x08004E46, "210f", "AF pins on GPIOB: 15"),
]
# Stock G5 pin roles that a wrong layout (e.g. LAYOUT 1 / defines_2-1-1.h) would collide with.
PIN_ROLE_ENCODINGS = [
    (0x08004A08, "f04f 4690", "ADC pin init: r6 = GPIOA"),
    (0x08004A1E, "2140 9100", "ADC pin init: GPIOA analog pin 6 (PA6, thermistor)"),
    (0x08004A2A, "2110 9100", "ADC pin init: GPIOA analog pin 4 (PA4, battery)"),
    (0x080027A0, "0370 9000", "hall init: GPIOC pin 13 (PC13, hall)"),
    (0x080027B0, "2102 9100", "hall init: GPIOA pin 1 (PA1, hall)"),
    (0x080027C2, "03b0 9000", "hall init: GPIOC pin 14 (PC14, hall)"),
    (0x0800278A, "2700 f88d 7004", "hall init: mode 0 (input)"),
    (0x0800279A, "2601 f88d 6007", "hall init: pupd 1 (pull-up)"),
    (0x08004126, "f44f 5480 9400 2001", "power latch: GPIOB pin 12 (PB12), mode 1 (output)"),
    (0x08004148, "4621 4628 f7fe fb0b", "power latch: PB12 driven high at start-up"),
    (0x08004FF0, "f44f 5080 9000 2000", "button: GPIOA pin 12 (PA12), mode 0 (input)"),
    (0x08005006, "2002", "button: PA12 pupd 2 (pull-down)"),
    (0x0800509E, "f44f 5180", "power off: PB12 (mask 0x1000) released"),
]
LITERALS = [
    (0x08002800, 0x48000800, "hall init port = GPIOC"),
    (0x08004154, 0x48000400, "power latch port = GPIOB"),
    (0x080050E8, 0x48000400, "power off port = GPIOB"),
    (0x08003380, 0x48000400, "board GPIO init port = GPIOB"),
    (0x08004A6C, 0x48000400, "ADC pin init second port = GPIOB"),
    (0x08004F98, 0x48000400, "AF pins 13-15 port = GPIOB"),
    (0x08006DA0, 0x2000021E, "main loop flag = 0x2000021E"),
    (0x08006E20, 0x2000008C, "main loop selector = slot 9 RAM"),
    (0x08006E28, 0x48000400, "main loop port = GPIOB"),
    (0x08006DAC, 0x08001A85, "scheduler entry = indicator task (Thumb bit set)"),
    (0x080019C8, 0x48000400, "indicator flash port r5 = GPIOB"),
]


def hwd(img, a):
    return struct.unpack_from("<H", img, a - BASE)[0]


def enc(img, a, text):
    want = [int(t, 16) for t in text.split()]
    return [hwd(img, a + 2 * i) for i in range(len(want))] == want


def check(label, ok, detail=""):
    print("  [%s] %s%s" % ("ok" if ok else "FAIL", label, ("  (" + detail + ")") if detail else ""))
    if not ok:
        FAILS.append(label)


def calls_to(img, targets, end=0x8000):
    """All Thumb-2 BL and B.W (T4) instructions in [0, end) whose target is in `targets`."""
    hits = {t: set() for t in targets}
    for off in range(0, end - 2, 2):
        h1, h2 = hwd(img, BASE + off), hwd(img, BASE + off + 2)
        if (h1 & 0xF800) != 0xF000:
            continue
        if (h2 & 0xD000) not in (0xD000, 0x9000):   # BL (11x1) or B.W T4 (10x1)
            continue
        s = (h1 >> 10) & 1
        j1, j2 = (h2 >> 13) & 1, (h2 >> 11) & 1
        i1, i2 = 1 - (j1 ^ s), 1 - (j2 ^ s)
        imm = (s << 24) | (i1 << 23) | (i2 << 22) | ((h1 & 0x3FF) << 12) | ((h2 & 0x7FF) << 1)
        if s:
            imm -= 1 << 25
        tgt = BASE + off + 4 + imm
        if tgt in hits:
            hits[tgt].add(BASE + off)
    return hits


def main(pb, pm):
    imgs = {}
    for key, path in (("B", pb), ("M", pm)):
        img = open(path, "rb").read()
        digest = hashlib.sha256(img).hexdigest()
        print("%s: %s  %d bytes  sha256 %s" % (key, path, len(img), digest[:16]))
        check("%s hash" % key, digest == EXPECT[key])
        imgs[key] = img
    b, m = imgs["B"], imgs["M"]

    print("\nMaster code equals B outside the parameter page")
    diff = [i for i in range(0x8000) if b[i] != m[i]]
    check("all differing bytes in 0x08007C00..0x08007C13", all(0x7C00 <= i < 0x7C14 for i in diff),
          "%d differing bytes" % len(diff))

    print("\nInstruction encodings (B)")
    for a, text, what in ENCODINGS:
        check("0x%08X %s" % (a, what), enc(b, a, text))

    print("\nStock G5 pin roles (B)")
    for a, text, what in PIN_ROLE_ENCODINGS:
        check("0x%08X %s" % (a, what), enc(b, a, text))

    print("\nLiterals (B)")
    for a, val, what in LITERALS:
        got = struct.unpack_from("<I", b, a - BASE)[0]
        check("0x%08X %s" % (a, what), got == val, "0x%08X" % got)

    print("\nEvery PB1/PB2 drive site (B)")
    hits = calls_to(b, [PIN_CLR, PIN_SET, GPIO_INIT, GPIO_AF])
    for call, movs_at, movs, helper, what in PB12_SITES:
        check("0x%08X %s" % (call, what), call in hits[helper] and enc(b, movs_at, movs))

    print("\nNo other caller of gpio_init / gpio_af")
    for helper, name in ((GPIO_INIT, "gpio_init"), (GPIO_AF, "gpio_af")):
        extra = hits[helper] - EXPECTED_SITES[helper]
        missing = EXPECTED_SITES[helper] - hits[helper]
        check("%s call sites match the traced list" % name, not extra and not missing,
              "unexpected %s, missing %s" % (sorted(hex(x) for x in extra), sorted(hex(x) for x in missing)))
    n_pin = len(hits[PIN_CLR]) + len(hits[PIN_SET])
    check("pin set/clear helpers have 98 call sites", n_pin == 98, "%d found" % n_pin)

    print("\nSlot 9 (0x08007C12) on each board")
    for key in ("B", "M"):
        s9 = struct.unpack_from("<H", imgs[key], 0x7C12)[0]
        check("%s slot 9 = 0x%04X (non-zero -> PB1 low, PB2 high in the main-loop block)" % (key, s9), s9 != 0)

    print("\nRESULT: %s" % ("all checks passed" if not FAILS
                            else "%d FAILED: %s" % (len(FAILS), "; ".join(FAILS))))
    return 1 if FAILS else 0


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(__doc__)
        sys.exit(2)
    sys.exit(main(sys.argv[1], sys.argv[2]))
