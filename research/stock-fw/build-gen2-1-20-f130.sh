#!/usr/bin/env bash
# Research only: build current Gen2 source (which also supports GD32F103)
# for the actual GD32F130C8/PCB-2.1.20 MCU/layout. DO NOT FLASH this
# SINGLE/REMOTE_DUMMY test program to a motor controller.
set -euo pipefail

SOURCE_REPO="https://github.com/hoverboardhavoc/Hoverboard-Firmware-Hack-Gen2.x-GD32.git"
SOURCE_BRANCH="f103-layout-2-2-20"
EXPECTED_SHA="a2d155baa7fbc4ad2647e93900942b8ef2bf633b"
ENV_NAME="genericGD32F130C8"

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
WORK="$ROOT/research-artifacts/gen2-1-20-f130"
SRC="$WORK/source"
OUTPUT="$WORK/output"
rm -rf "$SRC" "$OUTPUT"
mkdir -p "$OUTPUT"

command -v git >/dev/null || { echo "git not found" >&2; exit 2; }
command -v pio >/dev/null || { echo "PlatformIO CLI not found" >&2; exit 2; }
command -v python3 >/dev/null || { echo "Python 3 not found" >&2; exit 2; }

git clone --depth 1 --branch "$SOURCE_BRANCH" --single-branch "$SOURCE_REPO" "$SRC"
ACTUAL_SHA="$(git -C "$SRC" rev-parse HEAD)"
if [[ "$ACTUAL_SHA" != "$EXPECTED_SHA" ]]; then
  echo "STOP: source commit changed ($ACTUAL_SHA)" >&2
  exit 3
fi

export REFERENCE_SRC="$SRC"
python3 - <<'PY'
import os, re
from pathlib import Path

root = Path(os.environ["REFERENCE_SRC"]) / "HoverBoardGigaDevice"
config_path = root / "Inc/config.h"
config = config_path.read_text(encoding="utf-8")
old = "#ifdef GD32F130\t\t// TARGET = 1\n\t\t#define LAYOUT 1\n\t\t#define LAYOUT_SUB 1"
new = "#ifdef GD32F130\t\t// TARGET = 1\n\t\t#define LAYOUT 20"
if config.count(old) != 1:
    raise SystemExit("STOP: F130 LAYOUT 1 section changed; investigate")
config_path.write_text(config.replace(old, new, 1), encoding="utf-8")

ini_path = root / "platformio.ini"
ini = ini_path.read_text(encoding="utf-8")
m = re.search(r"(?ms)^\[env:genericGD32F130C8\]\n(.*?)(?=^\[env:|\Z)", ini)
if m is None:
    raise SystemExit("STOP: F130 PlatformIO environment missing")
section = m.group(0)
anchor = "    -Wl,-u,_printf_float"
if section.count(anchor) != 1:
    raise SystemExit("STOP: F130 linker flag has changed")
section = section.replace(anchor, anchor + "\n    -g3\n    -fno-lto\n    -Wl,-Map,reference.map", 1)
ini_path.write_text(ini[:m.start()] + section + ini[m.end():], encoding="utf-8")

header = root / "Inc/defines/defines_2-1-20.h"
h = header.read_text(encoding="utf-8")
if "#define PHASE_CURRENT_B\tPB1" not in h:
    raise SystemExit("STOP: upstream F130 current sense mapping changed")
if "#define PHASE_CURRENT_Y\tPB0" not in h:
    raise SystemExit("STOP: upstream F130 current sense mapping changed")
print("Selected source version", os.environ.get("EXPECTED_SHA", "pinned by shell"))
print("GD32F130C8 TARGET=1 LAYOUT=20, initially with UNMODIFIED F130 pin definitions")
PY

PIO_PROJECT="$SRC/HoverBoardGigaDevice"

TOOLS="$(find "$HOME/.platformio/packages" -type f -name 'arm-none-eabi-nm' -print -quit 2>/dev/null || true)"
# Toolchain may be installed by the first PlatformIO build, resolve it later.

for VARIANT in upstream stock-pa0; do
  echo "== Building F130 variant: $VARIANT =="
  if [[ "$VARIANT" == "stock-pa0" ]]; then
    export REFERENCE_SRC="$SRC"
    python3 - <<'PY'
import os
from pathlib import Path
p = Path(os.environ["REFERENCE_SRC"]) / "HoverBoardGigaDevice/Inc/defines/defines_2-1-20.h"
s = p.read_text(encoding="utf-8")
old = "#define PHASE_CURRENT_B\tPB1"
if s.count(old) != 1:
    raise SystemExit("STOP: F130 current-sense define changed")
p.write_text(s.replace(old, "#define PHASE_CURRENT_B\tPA0", 1), encoding="utf-8")
print("Research-only correction: PHASE_CURRENT_B=PA0; original upstream PB1 preserved in other variant")
PY
  fi

  DEST="$OUTPUT/$VARIANT"
  mkdir -p "$DEST"
  (
    cd "$PIO_PROJECT"
    pio run -e "$ENV_NAME" -t clean > "$DEST/clean.log" 2>&1
    pio run -e "$ENV_NAME" 2>&1 | tee "$DEST/build.log"
  )

  BIN_DIR="$PIO_PROJECT/.pio/build/$ENV_NAME"
  test -s "$BIN_DIR/firmware.elf" || { echo "Missing reference ELF" >&2; exit 4; }
  test -s "$BIN_DIR/firmware.bin" || { echo "Missing reference BIN" >&2; exit 4; }
  cp "$BIN_DIR/firmware.elf" "$DEST/firmware.elf"
  cp "$BIN_DIR/firmware.bin" "$DEST/firmware.bin"

  MAP_PATH="$(find "$PIO_PROJECT" -type f \( -name reference.map -o -name firmware.map \) -print -quit)"
  if [[ -z "$MAP_PATH" ]] || [[ ! -s "$MAP_PATH" ]]; then
    echo "Missing linker map for $VARIANT" >&2
    exit 5
  fi
  cp "$MAP_PATH" "$DEST/firmware.map"

  TOOLS="$(find "$HOME/.platformio/packages" -type f -name 'arm-none-eabi-nm' -print -quit 2>/dev/null || true)"
  if [[ -n "$TOOLS" ]]; then
    TOOLS="$(dirname "$TOOLS")"
  elif command -v arm-none-eabi-nm >/dev/null; then
    TOOLS="$(dirname "$(command -v arm-none-eabi-nm)")"
  else
    echo "Missing ARM binutils" >&2
    exit 6
  fi

  "$TOOLS/arm-none-eabi-nm" -S -n -C "$DEST/firmware.elf" > "$DEST/symbols.txt"
  "$TOOLS/arm-none-eabi-objdump" -d -C "$DEST/firmware.elf" > "$DEST/disassembly.txt"
  "$TOOLS/arm-none-eabi-readelf" -W -S "$DEST/firmware.elf" > "$DEST/sections.txt"
  "$TOOLS/arm-none-eabi-readelf" -W -s "$DEST/firmware.elf" > "$DEST/all-symbols.txt"
  "$TOOLS/arm-none-eabi-size" "$DEST/firmware.elf" > "$DEST/size.txt"

  grep -q '\.debug_info' "$DEST/sections.txt" || { echo "Missing debug symbols" >&2; exit 7; }

  export REFERENCE_DEST="$DEST"
  python3 - <<'PY'
import csv, os, re
from pathlib import Path
p = Path(os.environ["REFERENCE_DEST"])
rows = []
for s in (p/"symbols.txt").read_text(encoding="utf-8").splitlines():
    m = re.match(r"^([0-9a-fA-F]+)\s+([0-9a-fA-F]+)\s+([Tt])\s+(.+)$", s)
    if not m: continue
    addr, size, kind, name = m.groups()
    if int(size, 16):
        rows.append((f"0x{addr}", int(size, 16), kind, name))
with (p/"functions.csv").open("w", newline="") as f:
    w=csv.writer(f)
    w.writerow(("address","size_bytes","type","name"))
    w.writerows(rows)
print(f"{len(rows)} nonempty named functions indexed")
PY

  {
    echo "Research-only: do NOT flash to hardware."
    echo "Source: $SOURCE_REPO"
    echo "Source branch: $SOURCE_BRANCH"
    echo "Source SHA: $ACTUAL_SHA"
    echo "MCU: GD32F130C8"
    echo "Target: TARGET=1; layout: 2.1.20"
    echo "Pinmap variant: $VARIANT"
    if [[ "$VARIANT" == "upstream" ]]; then
       echo "Phase current B: PB1 (unmodified F130 defines_2-1-20.h)"
    else
       echo "Phase current B: PA0 (research correction informed by verified stock firmware ADC mapping)"
    fi
    echo "Phase current Y: PB0"
    echo "Build: -g3 -fno-lto -Wl,-Map,reference.map"
    echo "Original SINGLE / REMOTE_DUMMY is unmodified: may drive a motor."
    pio --version
    "$TOOLS/arm-none-eabi-gcc" --version | head -n 1
    (cd "$DEST" && sha256sum firmware.elf firmware.bin firmware.map)
  } > "$DEST/manifest.txt"
done

{
  echo "Both variants use the identical source commit: $ACTUAL_SHA"
  echo "Target: GD32F130C8 / TARGET=1 / PCB layout 2.1.20"
  echo "Variant upstream: original header PHASE_CURRENT_B=PB1."
  echo "Variant stock-pa0: research-only changed PHASE_CURRENT_B=PA0."
  echo "The stock firmware ADC channel mapping uses PA0 and PB0. This does NOT establish which motor phase or sign each shunt maps to."
  echo "Binary SHA-256:"
  sha256sum "$OUTPUT/upstream/firmware.bin" "$OUTPUT/stock-pa0/firmware.bin"
  echo
  echo "Differences (if any):"
  cmp -l "$OUTPUT/upstream/firmware.bin" "$OUTPUT/stock-pa0/firmware.bin" | head -n 24 || true
  echo
  echo "If hashes match, those defines are not consumed by the currently selected normal firmware build; they remain important to later FOC work."
} > "$OUTPUT/comparison.txt"

echo "F130 reference dictionaries: $OUTPUT/upstream and $OUTPUT/stock-pa0"
echo "DO NOT FLASH: both are analysis-only builds; motor output is not disabled."