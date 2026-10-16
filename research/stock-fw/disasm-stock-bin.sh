#!/usr/bin/env bash
# Disassemble a raw GD32F130C8 stock-flash dump (read-only analysis aid).
# Usage: bash research/stock-fw/disasm-stock-bin.sh <dump.bin> [out_dir]
# Wraps the first 32 KiB (code half) in an ELF at 0x08000000 so llvm-objdump
# can disassemble it as Thumb-2. Requires clang, ld.lld, llvm-objdump.
# Output is a reconstruction aid only; never flash anything derived from it.
set -euo pipefail
bin=${1:?usage: $0 <dump.bin> [out_dir]}
out=${2:-research-artifacts/stock-disasm}
name=$(basename "$bin" .bin)
mkdir -p "$out"
head -c 32768 "$bin" > "$out/$name.code.bin"
cat > "$out/$name.S" <<EOF
    .syntax unified
    .thumb
    .section .text,"ax"
    .incbin "$name.code.bin"
EOF
(cd "$out" && clang --target=thumbv7m-none-eabi -c "$name.S" -o "$name.o" \
  && ld.lld -Ttext=0x08000000 --entry=0x08000000 "$name.o" -o "$name.elf")
# Raw bytes include data/literal pools; objdump will decode those as code. Use
# the address-targeted form for functions, e.g. --start-address=0x0800252C.
llvm-objdump -d --triple=thumbv7m-none-eabi --mcpu=cortex-m3 "$out/$name.elf" > "$out/$name.dis"
sha256sum "$bin" > "$out/$name.sha256"
echo "wrote $out/$name.elf and $out/$name.dis"
