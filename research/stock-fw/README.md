# Stock firmware decoding — reference build workspace

This research branch is isolated from `servo/r0-baseline`. Do not merge or flash its reference firmware onto the GD32F130C8 factory boards.

## First reference: Gen2.2.20 / GD32F103C8

Source: https://github.com/hoverboardhavoc/Hoverboard-Firmware-Hack-Gen2.x-GD32/tree/f103-layout-2-2-20

Pinned source commit: `a2d155baa7fbc4ad2647e93900942b8ef2bf633b`

The Gen2.2.20 pin layout is based on a GD32F103 rather than the stock GD32F130. It is useful as a named-function/compiler reference and a hardware-topology reference, **not** an instruction-identical or executable substitute for factory firmware.

The source branch defaults to `LAYOUT 1` for GD32F103. The build script explicitly selects `LAYOUT 20`, preserving the original pin-definition file. It enables `-g3` debug information and a linker map without flashing the board.

Run the `Gen2.2.20 Reference Dictionary` GitHub Actions workflow on this branch, or run:

```sh
python3 -m pip install --user platformio
bash research/stock-fw/build-gen2-2-20.sh
```

Build script output lives under `research-artifacts/gen2-2-20/`, not the production firmware tree. Generated files include:

- `firmware.elf` — symbol-bearing reference image
- `firmware.bin` — matching flash image; **never flash this to a GD32F130 board**
- `firmware.map` — linker map
- `disassembly.txt` — Thumb instruction disassembly
- `symbols.txt` — sorted address/symbol list
- `sections.txt` and `all-symbols.txt` — ELF metadata
- `manifest.txt` — source pin and build environment
- `build.log` — compiler output for reproducibility

## Matched-processor reference: GD32F130C8 / Gen2.1.20

The **same pinned source commit** above contains an existing PlatformIO environment `genericGD32F130C8` (`TARGET=1`). Choosing `LAYOUT 20` selects `defines_2-1-20.h` — the F130 counterpart to F103's `defines_2-2-20.h`. That is the correct way to compile this revision for our MCU. A configuration using `TARGET=2` would still use the F103 peripheral definitions even if we renamed the board.

The source's F130 header lists `PHASE_CURRENT_Y=PB0` and `PHASE_CURRENT_B=PB1`. Prior factory firmware disassembly established the two likely shunt ADC [analog-to-digital converter] inputs as `PB0` and `PA0` (channel 8 and channel 0). The corresponding F103 layout header lists `PB0/PA0` as well.

To keep this discrepancy transparent, run:

```sh
bash research/stock-fw/build-gen2-1-20-f130.sh
```

That produces **two non-driving-policy-UNMODIFIED reference builds** under `research-artifacts/gen2-1-20-f130/output/`:

1. `upstream/` — pristine F130 board header (`PB0/PB1` current sensor macros).
2. `stock-pa0/` — research-only local header correction to `PB0/PA0` (not propagated to either upstream or ServoFOC).

Each output includes named ELF [Executable and Linkable Format], BIN [binary], linker map, disassembly, symbol table, and `functions.csv`. `comparison.txt` records SHA-256 [Secure Hash Algorithm 256-bit] hashes and whether the current normal firmware references the changed current-pin macro. Matching BIN [binary] hashes **would not validate either pin assignment**; unused macros do not change compiled code.

**Neither output has been hardened for safe operation**. The upstream `REMOTE_DUMMY` motor-drive behavior is still present. These are static reverse-engineering artifacts only; do not flash them.

Next stages: compare the F130 and F103 reference functions with the factory master/slave binaries, then normalize function fingerprints for call-graph and peripheral-access matching.

**Safety:** The Gen2 source's default `SINGLE` / `REMOTE_DUMMY` mode may command motor rotation. This is a disassembly/reference build only; do not flash or energize a motor with it.

**Provenance:** Source is GPL-3.0 fork-derived code. Keep attribution and check file headers before adapting code to ServoFOC.


## Factory firmware decoding reports

- [Phase 1 — initial A/B dump inventory](FACTORY_FW_STEP1_BASELINE.md)
- [Phase 2 — interrupt vectors, functions, and A dump consistency](FACTORY_FW_STEP2_DISASSEMBLY.md)
- [Phase 3 — inserted ADC, shunts, PA6 thermal protection](FACTORY_FW_STEP3_ADC_CURRENT_THERMAL.md)
- [Phase 4 — TIMER0 synchronization, vector PWM, thermal limiting](FACTORY_FW_STEP4_PWM_ADC_VECTOR_DERATING.md)
- [Phase 5 — **reviewed current-loop mathematics and motor-state gating**](FACTORY_FW_STEP5_CURRENT_LOOP_STATES.md) with [machine-readable function map](FACTORY_FW_STEP5_FUNCTION_MAP.csv)
- [Phase 6 — **B-image verification, rotor-angle generation, TIMER0 configuration, parameter page**](FACTORY_FW_STEP6_VERIFICATION_ANGLE_PARAMS.md) with reproduction script [`analyze_phase6.py`](analyze_phase6.py) (`python3 -I analyze_phase6.py <A> <A2> <B>`; firmware dumps are not committed)

The B/slave original is the primary current decoding baseline; A/master dump integrity is unresolved. All documented function names are reconstructed, and all code addresses refer to **factory B**, not the independently compiled open-source reference. The Phase 5 report distinguishes the stock resistance-threshold demand limiter from any unproven I²R thermal estimator. Research remains read-only and independent of R0.1/R1.
