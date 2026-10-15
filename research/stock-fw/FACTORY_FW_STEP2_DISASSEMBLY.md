# Factory firmware decoding — Phase 2: instruction-level landmarks

Analysis date: 2026-10-15  
Project: Gyroor G5 Gen2 controller, GD32F130C8 Cortex-M3/Thumb-2  
Scope: read-only static comparison; no hardware operation or firmware modification.

## 1. Inputs and reference

The source images are the original user-provided 64-KiB factory dumps (stored separately, **not in the public GitHub repository**):

| Specimen | File | SHA-256 [Secure Hash Algorithm 256-bit] prefix | Role in analysis |
|---|---|---|---|
| A master | `oriFW(1).bin` | `c0d45253cc601ba1` | A-board primary original capture; **has material internal inconsistencies** |
| A repeat | `oriFW(2).bin` | `c0d45253cc601ba1` | Byte-identical repeat of A primary |
| A alternate | `oriFW2.bin` | `7f311f8b87aa3f1d` | Different A-board capture; **also has internal inconsistencies** |
| B slave | `oriFWB.bin` | `f13fad73f874c3e7` | Best current reference for decoding live control-flow |

The compiled open-source *dictionary* is the Gen2.1.20 F130 reference built from hoverboardhavoc commit `a2d155baa7fbc4ad2647e93900942b8ef2bf633b` (`TARGET=1`, `LAYOUT=20`). The companion Gen2.2.20 F103 build uses the same source revision. **These are independently developed replacement implementations, not manufacturer sources.** Matching a named library routine establishes comparable behavior, not original-source provenance or byte identity.

We use LLVM 17 Thumb disassembly at flash address `0x08000000`. Raw whole-ROM linear disassembly also decodes interrupt vectors, constants and lookup tables as spurious instructions: the proof below uses **manually verified entry points, actual branch/call instructions, register addresses, and literal-pool contents**. The accompanying automatic PC-relative cross-reference table is explicitly marked as unvalidated candidates.

## 2. Interrupts: actual instructions and call relationships in B

| Entry point | Vector | Verified behavior | Selected call targets |
|---|---|---|---|
| `0x08000A58` | `ADC_CMP_IRQHandler` | Tests ADC [analog-to-digital converter] peripheral status at `0x40012400`; acknowledges a pending flag; reads conversion data; updates derived states | `0x08000BBC`, `0x08002808`, `0x080016CC`, `0x08001684` |
| `0x08002018` | `DMA_Channel3_4_IRQHandler` | Checks DMA [direct memory access] flags; touches USART1 at `0x40004400`; services a serial/DMA receive path | `0x08002218`, `0x08002078`, `0x08005D28`, `0x080021F8` |
| `0x080023D8` | `EXTI4_15_IRQHandler` | Tests external interrupt line mask `0x1000` (line 12); conditionally calls an empty stub; acknowledges EXTI pending flag | `0x08002404`, `0x0800378A`, `0x080023F8` |
| `0x08005480` | `TIMER0_BRK_UP_TRG_COM_IRQHandler` | Checks and clears TIMER0 flags at `0x40012C00`; one branch triggers the ADC [analog-to-digital converter] conversion helper | `0x08005714`, `0x080055DA`, `0x080049C4` |
| `0x08005C84` | `USART1_IRQHandler` | Has proper register-saving prologue in B; handles USART1 status/DMA receive buffer and invokes packet validation | `0x08005D98`, `0x080021F8`, `0x08002212`, `0x08006E64` |

**Correction:** The active DMA channel group interrupt visible at `0x08002018` is part of the **serial communication** path, not evidence by itself that motor ADC acquisition uses this DMA interrupt. The ADC interrupt routine itself is directly evidenced. The EXTI line-12 handler should not automatically be interpreted as a Hall interrupt: its callback `0x0800378A` is simply `bx lr` (no-op) in B. The button/power state may be polled elsewhere.

## 3. First reconstructed factory functions

All addresses below refer to **B/slave**, unless explicitly stated otherwise. Reconstructed names are not factory symbols.

| Factory B entry | Reconstructed function | Key evidence | Corresponding known-source symbol |
|---|---|---|---|
| `0x08000BBC` | Read one ADC conversion result | `0x40012400 + 0x28 + offset`; caller passes `0x1C`/`0x20`, reading registers at `0x40012444` and `0x40012448` | Not compiled under a directly equivalent symbol |
| `0x080016CC` | 32-entry analog moving-average filter | Circular array `0x20000550`, source `0x20000264`, ring limit `0x20`, accumulator and shifted output | Not directly equivalent |
| `0x08001684` | 128-entry analog moving-average filter | Circular array `0x20000590`, source `0x20000266`, ring limit `0x80`, accumulator and shifted output | Not directly equivalent |
| `0x08002754` | Read GPIO [general-purpose input/output] bit | Reads input register `[r0+0x10]`, tests bitmask, returns boolean | `gpio_input_bit_get` (`0x08007822` in reference) |
| `0x08002808` | Hall-sector/motion-state processing | Calls `0x08006A3C`, branches through sector-dependent table, updates state/counters | Conceptual BLDC [brushless direct-current] Hall processing |
| `0x08004D4C` | Read two analog samples with offsets | Reads `0x4001243C` and `0x40012440`, subtracts stored zero points, doubles/clamps results | Potential phase-current processing; **physical role unverified** |
| `0x080049C4` | Initiate ADC hardware activity | Sets ADC control bit at `0x40012408` and clears status via `0x08000B20` | ADC peripheral control (not an exact source function match) |
| `0x080023F8` | Clear external interrupt pending flag | Writes mask to EXTI register `0x40010414` | `exti_flag_clear` (`0x080075D4`) |
| `0x08002404` | Test external interrupt enable/pending | Reads EXTI status and enable masks | `exti_interrupt_flag_get` (`0x080075E0`) |
| `0x080055DA` | Clear timer interrupt flag | Inverts flag mask, writes timer register `[r0+0x10]` | `timer_interrupt_flag_clear` (`0x08007EB4`) |
| `0x08005714` | Test timer interrupt status | Tests timer registers at offsets `+0x0C` and `+0x10` | `timer_interrupt_flag_get` (`0x08007EA2`) |
| `0x08006A3C` | Sample and track Hall inputs | Reads GPIOC `0x48000800` masks `0x2000` (PC13) and `0x4000` (PC14); GPIOA `0x48000000` mask `0x2` (PA1) | Hall input equivalent; not byte-level matching |
| `0x08006E38` | Table-driven CRC-16/MODBUS [16-bit cyclic redundancy check, Modbus variant] | Two 256-byte tables, initializes both CRC bytes to `0xFF`, returns 16-bit value | Independent factory protocol function |
| `0x08006E64` | Packet validation and dispatch | Invokes checksum routine `0x08006E38`, checks length/frame state and branches by command byte | Independent factory communication implementation |
| `0x08000CCC` | Read/process IMU [inertial measurement unit] | I²C [inter-integrated circuit] address `0x68`, 14-byte register read from `0x3B`, then axis unpack/filtering | MPU60x0-family read path |

The F130 symbol addresses in the last column are dictionary locations, **not** stock firmware locations. The semantic matches for GPIO, EXTI and timer helpers are especially strong because both codebases manipulate the same peripheral registers with comparable Boolean/mask logic. The larger motor and communications functions are not source-identical.

### 3.1 Hall chain

```text
ADC_CMP_IRQHandler 0x08000A58
    └─ calls sector/state processor 0x08002808
         └─ calls Hall GPIO sampler 0x08006A3C
              ├─ PC13 (GPIOC bit 13)
              ├─ PA1  (GPIOA bit 1)
              └─ PC14 (GPIOC bit 14)
```

This confirms Hall **physical inputs** via instructions. It does not alone determine the relationship between raw Hall bits and external wheel/phase labels for our new servo algorithm.

### 3.2 Current and auxiliary analog acquisition

One ADC interrupt branch reads two conversion-result registers, stores the values at `0x20000264` and `0x20000266`, then calls separate 32/128-entry filters. Another B function, `0x08004D4C`, reads a different adjacent ADC register pair at offsets `0x3C` and `0x40`, subtracts stored offsets, and saturates signed values. The latter is a **candidate phase-current acquisition path**. It is not correct yet to assert that these two values are phase A/B until the channel-configuration dataflow is traced.

The factory source image and old deep-analysis notes support a regular scan of ADC channels `0, 8, 6, 4` (pins PA0, PB0, PA6, PA4 respectively); this pass did **not** independently finish the channel-to-current/temperature mapping. PA6 is still a strong motor/stator thermistor candidate based on the earlier resistance-filter evidence, but the present decoder does not newly prove temperature calibration.

### 3.3 Factory serial checksum (fully verified for B)

The routine at `0x08006E38` reads from two 256-byte lookup tables at `0x08007120` (low-byte update) and `0x08007220` (high-byte update), starting with `0xFFFF`. This is **CRC-16/MODBUS [16-bit cyclic redundancy check, Modbus variant]**, standard reflected polynomial `0xA001` (normal polynomial `0x8005`), initial value `0xFFFF`. Test `123456789` yields `0x4B37` from the **actual B ROM tables**. CRC results alone do not prove the complete frame boundaries, length coverage or transmitted byte order; those remain protocol-decoding tasks.

## 4. Crucial consistency warning: A ROM images

A repeat dump proves byte-for-byte reproducibility of `oriFW(1).bin`; it **does not prove that the bytes form a self-consistent executable image**. Instruction-level comparison exposes problems not visible in the 98.98% A/B aligned-byte similarity figure.

| Test | A/master `oriFW(1)` | Alternate A `oriFW2` | B/slave `oriFWB` |
|---|---|---|---|
| Reset vector `0x08000171` | At `0x170`, begins after the earlier `blx` step of a two-step startup stub | Normal two-step stub | Normal two-step stub |
| EXTI4_15 vector `0x080023D9` | Enters at `0x23D8`, within the routine whose prologue is at `0x23C8`, skipping its register save | Enters at `0x23D8`, **inside the second half** of a 32-bit instruction belonging to prologue at `0x23D4` | Enters at a valid `push {r4,lr}` prologue at `0x23D8` |
| USART1 vector `0x08005C85` | Enters at `0x5C84`, after a missing `push.w {r4,r5,r6,r7,r8,lr}`; its epilogue still pops that register set | Normal prologue | Normal prologue |
| CRC function's literal table pointer | Valid `0x08007120`, but high-table sequence is displaced four bytes earlier than expected | Pointer decoded from literal pool at `0x6E58` is `0xF000B510` (code, not valid lookup-table pointer) | Valid pointer `0x08007120`, two tables exactly 256 bytes apart |
| CRC of `123456789` with **actual referenced tables** | `0xE415` (not correct CRC-16/MODBUS) | Unable to run: table pointer is not a flash data address | **`0x4B37` (expected)** |

Both A images have discrepancies serious enough that **we should not use either as the trusted control-flow baseline**, nor assume they are safe/flashable without further investigation. The cause remains unproven: partial or offset-shifted firmware extraction, patching, firmware versions, per-board variants or some other artifact are all hypotheses, not conclusions. B is currently the more internally consistent specimen.

**Vector relocation check:** A factory routine writes to SCB_VTOR [System Control Block vector table offset register] at `0xE000ED08`; in B, its caller at `0x080035E4` supplies flash base `0x08000000`. This is **not evidence of a different interrupt table correcting the stale A-vector addresses**. Nonetheless, whether any alternative runtime initialization path exists needs dynamic verification before definitively claiming a hardware malfunction.

**Action:** Preserve all three unique image bytes and their checksums. If convenient, later re-read A flash with SWD [serial wire debug] and compare a dump at least three times with the board powered stably, without erasing or flashing. Do not attempt to “repair” or merge images until extraction behavior is understood.

## 5. Outputs and confidence discipline

The companion analysis script creates:

- `factory_phase2_image_integrity.csv` — source identity and exact hashes;
- `factory_phase2_vector_entry_checks.csv` — vectors, first instructions, evidence for suspect A pointers;
- `factory_phase2_B_direct_calls.csv` — directed branch-and-link call edges from selected B functions;
- `factory_phase2_pc_literal_xrefs.csv` — **candidate** PC-relative peripheral constants from linear disassembly; requires code reachability checks;
- `factory_phase2_B_semantic_labels.csv` — 20 reconstructed B functions with evidence and dictionary relationships;
- `factory_phase2_crc_integrity.csv` — CRC function/table-pointer and standard check-vector results for every distinct image.

This pass did **not** disassemble every reachable function, decompile all arithmetic, validate hardware execution, infer absolute Hall/phase polarity or decode packet field layouts. Its primary contribution is an evidence-linked **function map, call relationships and a diagnostic quality check for our factory dumps**.

## 6. Next research step

Use the internally consistent B image first. Recover ADC configuration (regular/injected ranks and trigger phase), identify the two current-sense register-to-phase mappings, and reconstruct the temperature/derating dataflow. In parallel, decode the UART [universal asynchronous receiver-transmitter] protocol using the now-identified CRC. Cross-map the results to A only after the A images' structural discrepancies are explained.

The work remains exclusively under `research/stock-fw-decoding`, without any changes to ServoFOC R0.1 or R1 and without flashing hardware.