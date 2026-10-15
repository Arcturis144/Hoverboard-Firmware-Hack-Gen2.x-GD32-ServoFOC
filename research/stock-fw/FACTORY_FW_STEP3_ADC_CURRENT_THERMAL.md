# Factory firmware decoding — Phase 3: ADC/current/thermal paths

Analysis date: 2026-10-15. This is **read-only static analysis** of the original B/slave `oriFWB.bin` image. No stock firmware images are committed. No hardware is flashed and R0.1/R1 are unchanged.

## Provenance and confidence

- Original: `oriFWB.bin`, 65,536 bytes, SHA-256 `f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6`.
- Processor: GD32F130C8 (ARM Cortex-M3 / Thumb-2), flash base `0x08000000`.
- Open-source dictionary: F130 `TARGET=1`, `LAYOUT=20`, based on `hoverboardhavoc` commit `a2d155baa7fbc4ad2647e93900942b8ef2bf633b`.
- The B factory dump is the best currently verified instruction-flow reference. A/master captures contain unresolved structural issues.
- The factory and Gen2 source are *not source-equivalent*. Similarity is semantic and peripheral-specific.

## Key correction: four INSERTED ADC ranks

At `0x08004C84`, the factory initializes a four-rank inserted ADC [analog-to-digital converter] group. `0x08000C94` sets `ADC_ISQ` length=4 and `0x08000C3C` programs each rank.

| Rank | Channel | Pin | Result | Factory rank call | Factory use |
|---|---:|---|---|---|---|
| 1 | 0 | PA0 | `IDATA0` at `0x4001243C` | `0x08004CB2` | Phase-current shunt measurement |
| 2 | 8 | PB0 | `IDATA1` at `0x40012440` | `0x08004CBC` | Phase-current shunt measurement |
| 3 | 6 | PA6 | `IDATA2` at `0x40012444` | `0x08004CC6` | Long-filtered resistor/thermistor input |
| 4 | 4 | PA4 | `IDATA3` at `0x40012448` | `0x08004CD0` | Battery voltage |

This establishes ADC channel ordering and physical pins, **not which motor phase name** corresponds to PA0 or PB0. The current `defines_2-1-20.h` in the open-source reference contains a different `PB1` claim, but the original B factory firmware configures `PA0` and `PB0` for its two current-measurement channels.

The factory's setup configures **left-aligned ADC words** (DAL, bit 11 of `ADC_CTL1`), via `0x08004A4A` / `0x08000BF0`. Do not decode raw samples as unscaled, right-aligned 12-bit values.

## Zero-current calibration

B function `0x08004C84` repeats an inserted conversion and reads IDATA0/IDATA1 **16 times**, adding `sample >> 3` each iteration. The halfword sums are at `0x200002BA` (PA0) and `0x200002BC` (PB0), approximating twice each channel's average raw reading.

It compares each accumulator against the unsigned range **30,001–34,499** (inclusive), via subtraction `0x7531` and unsigned bound `0x1193`. The status byte `0x200002B0` is set to **0 if both pass**, otherwise **1**. This is a zero-offset plausibility test, not a completed amperes calibration.

At `0x08004D4C`, the factory computes:

```c
sample0 = clamp_s16(offset_PA0 - 2 * IDATA0);
sample1 = clamp_s16(offset_PB0 - 2 * IDATA1);
```

The two 16-bit signed results are packed in a 32-bit return word, used by `0x0800252C` and stored at `0x2000024C`, then passed into additional control routines that ultimately update motor timer compare registers. Physical shunt phase labels, analog gain and amperes scaling still need verification.

## Separate sensor filters

The ADC interrupt `0x08000A58` reads IDATA2 (PA6) into `0x20000266` and IDATA3 (PA4) into `0x20000264`.

| Factory filter | Source | Sample history | Filtered RAM | Downstream purpose |
|---|---|---:|---|---|
| `0x08001684` | PA6 `IDATA2` | 128 entries (`0x20000590`) | `0x2000029E` | Resistance estimate |
| `0x080016CC` | PA4 `IDATA3` | 32 entries (`0x20000550`) | `0x2000029A` | Fixed-point battery calculation |

Sample counts do **not** establish milliseconds until actual trigger cadence is known.

## PA6 thermistor-type processing

B routine `0x08001708` reads filtered PA6 ADC output `x`, multiplies by 10000, subtracts `x` from 32768 and performs signed division:

```c
estimated_resistance = (10000 * x) / (32768 - x);
```

Result is stored at `0x20000114`. This is strong code-level evidence for a 10-kohm-divider, thermistor-type input and is consistent with the observed motor stator temperature-sensor hardware. No resistance-to-temperature (beta) calibration is present in this formula.

| Condition | Counter | Max count | Fault asserted after | Flag |
|---|---|---:|---:|---|
| R < 8,000 ohms | `0x20000090` | 3,000 | > 2,900 updates | `0x20000069` |
| R < 6,000 ohms | `0x20000092` | 2,000 | > 1,900 updates | `0x2000006A` |

Counters decrement on recovery; the fault bytes are **set** in this function but not cleared there. The first flag participates in a downstream drive-state decision around `0x08001DAC`. Full shutdown/derating behavior, reset conditions and actual time durations remain unproven. Potential divide-by-zero at `x=32768` is a static-code edge case; input-circuit operating range and trap policy need to be checked before making a safety conclusion.

## ADC triggering: important uncertainty

- `0x08004C98` sets injected trigger selection `ETSIC=7` (software trigger).
- `0x08004CDC` calls `0x08000CAC`, which requests `SWICST` (bit 21) and enables `ETEIC` (bit 15).
- TIMER0 interrupt `0x08005480` calls `0x080049C4`, which sets `ETEIC` **bit 15 only**. It does *not* issue `SWICST` at that instruction.
- `0x08004C34` changes trigger-select bit 12, so active trigger selection depends on controller state.

**Do not yet claim a verified PWM-relative ADC sampling instant.** That requires a full control-state and trigger path trace or hardware capture.

## What this means for the reference dictionary

Open-source `ADC_init` at F130 reference address `0x080034B0` configures a **regular ADC group with DMA [direct memory access]**. The factory instead uses an injected group with an explicit zero-current calibration flow. Their helper routines can be semantically matched, but the higher-level ADC architectures are not equivalent.

## Next research targets

1. Resolve injected conversion triggering, ADC sampling cadence and timing relative to TIMER0/PWM.
2. Reconstruct current-feedback mathematics between `0x0800252C` and `0x08004AC0`, including physical phase identity and digital-to-ampere scaling.
3. Trace thermal fault flags, battery state and motor enable/disable behavior.
4. Only then compare reconstructed systems against the original A/master image, whose instruction consistency still requires independent verification.

A local read-only decoder and eight evidence CSV [comma-separated values] tables accompany the complete Phase 3 download provided in the conversation. The original factory binaries are excluded from distributed artifacts.
