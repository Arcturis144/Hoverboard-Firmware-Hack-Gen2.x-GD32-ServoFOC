# Factory firmware reverse engineering — Step 1 baseline

Analysis date: 2026-10-15. Scope: **read-only static analysis of the original factory firmware**. No code flashed, motor energized, or changes made to `servo/r0-baseline`.

## Primary input images

| Role | Original image | Size | SHA-256 |
|---|---|---:|---|
| A / master | `oriFW(1).bin` | 65,536 bytes | `c0d45253cc601ba1bc2291f3493203122bd9f66237e942f42b293d08a7a50c13` |
| B / slave | `oriFWB.bin` | 65,536 bytes | `f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6` |

Additional artifacts: `oriFW(2).bin` was verified byte-for-byte identical to A/master; `oriFW2.bin` is a distinct 65,536-byte image and **must remain a separate specimen**. `oriFW.bin` is only 1,024 bytes and must not be substituted for a complete dump.

The binary files themselves are deliberately not added to this repository. Preserve the originals separately and verify their SHA-256 before each subsequent analysis.

## Firmware address space and vector table

- Architecture: GD32F130C8 / ARM Cortex-M3 Thumb-2.
- Flash base: `0x08000000`; full 64 KiB dump span `0x08000000–0x0800FFFF`.
- Initial stack pointer: `0x20000A90`.
- Reset vector: `0x08000171`; executable entry `0x08000170`.
- Both original images have identical startup/vector bytes through offset `0x157`. At offset `0x158` startup code begins, so do **not** treat subsequent words as additional vectors.
- Handler names below use the vendor `startup_gd32f1x0.s` vector order from pinned Gen2 source revision `a2d155baa7fbc4ad2647e93900942b8ef2bf633b`. An entry-point label alone does not identify all the code reached through that handler.

| Handler | Entry address | A/B first-64-byte window |
|---|---|---|
| `ADC_CMP_IRQHandler` | `0x08000A58` | identical |
| `DMA_Channel3_4_IRQHandler` | `0x08002018` | identical |
| `EXTI4_15_IRQHandler` | `0x080023D8` | differs |
| `TIMER0_BRK_UP_TRG_COM_IRQHandler` | `0x08005480` | identical |
| `TIMER1_IRQHandler` | `0x080054C0` | identical |
| `TIMER2_IRQHandler` | `0x080054F4` | identical |
| `USART1_IRQHandler` | `0x08005C84` | differs |

The matching timer/ADC/DMA [direct memory access] handler entry windows strongly suggest a shared low-level motor-control foundation; the differing EXTI [external interrupt] and USART [universal synchronous/asynchronous receiver-transmitter] windows are initial candidates for board-role logic. Whole functions still require disassembly before claiming they match.

## A/B binary alignment

Within the first `0x8000` bytes:

- Same-offset identical bytes: **not** a reliable similarity metric when insertions shift subsequent instructions and constants.
- Levenshtein sequence alignment: **32,434 / 32,768** aligned-equal bytes (**98.98%**), with 258 alignment operations.
- This measures byte-sequence relatedness rather than decompiled source/function equivalence. Literal pools and repeated byte patterns can create ambiguous alignments.

## Peripheral address landmarks

Both images contain candidate 32-bit little-endian literal constants for:

| Peripheral | Address |
|---|---|
| ADC [analog-to-digital converter] | `0x40012400` |
| TIMER0 [advanced motor PWM timer] | `0x40012C00` |
| TIMER2 | `0x40000400` |
| USART0 | `0x40013800` |
| USART1 | `0x40004400` |
| DMA [direct memory access] | `0x40020000` |
| RCU [reset and clock unit] | `0x40021000` |
| FMC [flash memory controller] | `0x40022000` |
| GPIOB | `0x48000400` |
| GPIOC | `0x48000800` |

These byte-level literal matches are **not yet verified code cross-references**. A disassembler/decompiler pass must identify the actual referring instructions and surrounding operations.

## Distinct end-of-image data

- A/master: programmed data from around `0x08007BFC`, last non-`0xFF` byte `0x08007C0E`.
- B/slave: programmed data from around `0x08007C00`, last non-`0xFF` byte `0x08007C13`.

The structure/function of these tail bytes is unresolved (possible calibration/configuration/identity). Preserve them independently; do not assume they are safely replaceable padding.

## Relation to compiled Gen2 dictionary

The pinned open-source revision `a2d155baa7fbc4ad2647e93900942b8ef2bf633b` has been successfully compiled for the F130 (`TARGET=1`, `LAYOUT=20`, PCB 2.1.20) and F103 (`TARGET=2`, `LAYOUT=20`, PCB 2.2.20). Use the **F130** symbol-bearing ELF [Executable and Linkable Format] first to identify equivalent stock firmware functions. Compiled reference addresses must **never** be presented as stock addresses.

## Next tasks within Step 1

1. Disassemble the original master and slave ROMs as little-endian Thumb-2 at `0x08000000` and seed actual entry points from the vector table.
2. Resolve code versus literal pools and follow candidate MMIO [memory-mapped input/output] peripheral-address loads through call graphs.
3. Analyze the differing EXTI and USART handler windows and classify shared motor-control functions.
4. Identify and preserve the original per-board tail/configuration data.
5. Use the F130 named-function dictionary to propose candidate labels with supporting constants, control-flow shapes, caller relationships and confidence scores.

**Boundary:** This is pre-programming reverse engineering. R0.1 and R1 are intentionally unchanged.
