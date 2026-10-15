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

Next stages: build the Gen2.1.20/GD32F130 reference, normalize function fingerprints, then match both reference builds against the preserved factory A/master and B/slave binary images.

**Safety:** The Gen2 source's default `SINGLE` / `REMOTE_DUMMY` mode may command motor rotation. This is a disassembly/reference build only; do not flash or energize a motor with it.

**Provenance:** Source is GPL-3.0 fork-derived code. Keep attribution and check file headers before adapting code to ServoFOC.
