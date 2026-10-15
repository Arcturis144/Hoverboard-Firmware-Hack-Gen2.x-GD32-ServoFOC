#!/usr/bin/env bash
# Reproducible, analysis-only Gen2.2.20 reference ELF build.
# NEVER flash this GD32F103 image to the factory GD32F130 controller.
set -euo pipefail

SOURCE_REPO="https://github.com/hoverboardhavoc/Hoverboard-Firmware-Hack-Gen2.x-GD32.git"
SOURCE_BRANCH="f103-layout-2-2-20"
EXPECTED_SHA="a2d155baa7fbc4ad2647e93900942b8ef2bf633b"
ENV_NAME="genericGD32F103C8"

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
WORK="$ROOT/research-artifacts/gen2-2-20"
SRC="$WORK/source"
OUTPUT="$WORK/output"
mkdir -p "$WORK"
rm -rf "$SRC" "$OUTPUT"
mkdir -p "$OUTPUT"

command -v git >/dev/null || { echo "git not installed" >&2; exit 2; }
command -v pio >/dev/null || { echo "PlatformIO (pio) not installed" >&2; exit 2; }
command -v python3 >/dev/null || { echo "Python 3 not installed" >&2; exit 2; }

git clone --depth 1 --branch "$SOURCE_BRANCH" --single-branch "$SOURCE_REPO" "$SRC"
ACTUAL_SHA="$(git -C "$SRC" rev-parse HEAD)"
if [[ "$ACTUAL_SHA" != "$EXPECTED_SHA" ]]; then
    echo "Reference source changed: expected $EXPECTED_SHA, got $ACTUAL_SHA" >&2
    exit 3
fi

export GEN2_REF_SRC="$SRC"
python3 - <<'PY'
import os
from pathlib import Path

src = Path(os.environ["GEN2_REF_SRC"])
config_path = src / "HoverBoardGigaDevice/Inc/config.h"
original = config_path.read_text(encoding="utf-8")
old = "#elif GD32F103\t\t// TARGET = 2\n\t\t#define LAYOUT 1"
new = "#elif GD32F103\t\t// TARGET = 2\n\t\t#define LAYOUT 20"
if original.count(old) != 1:
    raise SystemExit("STOP: cannot uniquely select F103 layout 2.2.20")
config_path.write_text(original.replace(old, new), encoding="utf-8")

ini_path = src / "HoverBoardGigaDevice/platformio.ini"
ini = ini_path.read_text(encoding="utf-8")
anchor = "    -Wl,--undefined=SystemCoreClock  # Force linker to resolve symbol"
if ini.count(anchor) != 1:
    raise SystemExit("STOP: cannot uniquely add F103 debug-build flags")
ini = ini.replace(
    anchor,
    anchor + "\n    -g3\n    -fno-lto\n    -Wl,-Map,reference.map",
    1
)
ini_path.write_text(ini, encoding="utf-8")

assert "#define LAYOUT 20" in config_path.read_text(encoding="utf-8")
print("Configured TARGET=2, LAYOUT=20, debug symbols -g3, linker map")
PY

PIO_PROJECT="$SRC/HoverBoardGigaDevice"
(
    cd "$PIO_PROJECT"
    pio run -e "$ENV_NAME" 2>&1 | tee "$OUTPUT/build.log"
)

ELF="$PIO_PROJECT/.pio/build/$ENV_NAME/firmware.elf"
BIN="$PIO_PROJECT/.pio/build/$ENV_NAME/firmware.bin"
test -s "$ELF" || { echo "ELF not generated" >&2; exit 4; }
test -s "$BIN" || { echo "BIN not generated" >&2; exit 4; }
cp "$ELF" "$OUTPUT/firmware.elf"
cp "$BIN" "$OUTPUT/firmware.bin"

if [[ -s "$PIO_PROJECT/reference.map" ]]; then
    cp "$PIO_PROJECT/reference.map" "$OUTPUT/firmware.map"
else
    echo "Missing linker map" >&2
    exit 5
fi

TOOLS="$(find "$HOME/.platformio/packages" -type f -name 'arm-none-eabi-nm' -print -quit 2>/dev/null || true)"
if [[ -n "$TOOLS" ]]; then
    TOOLS="$(dirname "$TOOLS")"
elif command -v arm-none-eabi-nm >/dev/null 2>&1; then
    TOOLS="$(dirname "$(command -v arm-none-eabi-nm)")"
else
    echo "arm-none-eabi-binutils tools not installed" >&2
    exit 6
fi

"$TOOLS/arm-none-eabi-nm" -n -C "$OUTPUT/firmware.elf" > "$OUTPUT/symbols.txt"
"$TOOLS/arm-none-eabi-objdump" -d -C "$OUTPUT/firmware.elf" > "$OUTPUT/disassembly.txt"
"$TOOLS/arm-none-eabi-readelf" -W -S "$OUTPUT/firmware.elf" > "$OUTPUT/sections.txt"
"$TOOLS/arm-none-eabi-readelf" -W -s "$OUTPUT/firmware.elf" > "$OUTPUT/all-symbols.txt"
"$TOOLS/arm-none-eabi-size" "$OUTPUT/firmware.elf" > "$OUTPUT/size.txt"

if ! grep -q '\.debug_info' "$OUTPUT/sections.txt"; then
    echo "Missing .debug_info — build is not a symbol-bearing dictionary" >&2
    exit 7
fi

{
    echo "Purpose: named reference for stock firmware reverse engineering (NOT flashable on GD32F130)"
    echo "Repository: $SOURCE_REPO"
    echo "Branch: $SOURCE_BRANCH"
    echo "Source commit: $ACTUAL_SHA"
    echo "Target: GD32F103C8 (TARGET=2 / LAYOUT=20)"
    echo "PlatformIO environment: $ENV_NAME"
    echo "Build flags added: -g3 -fno-lto -Wl,-Map,reference.map"
    echo
    pio --version
    "$TOOLS/arm-none-eabi-gcc" --version | head -n 1
    echo
    (cd "$OUTPUT" && sha256sum firmware.elf firmware.bin firmware.map)
} > "$OUTPUT/manifest.txt"

echo "Reference dictionary generated in: $OUTPUT"
echo "DO NOT FLASH: firmware.bin targets F103 and is intended only for static analysis."
