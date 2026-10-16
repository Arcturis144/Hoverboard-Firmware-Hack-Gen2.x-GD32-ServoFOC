# Gyroor G5 B/slave factory firmware — Phase 4: ADC timing, vector/PWM and protection

**Date:** 2026-10-15  
**Scope:** Read-only GD32F130C8 factory firmware decoding. No flash operation and no modification of the ServoFOC R0.1/R1 branches.  
**Source:** `oriFWB.bin`, 65,536 bytes, SHA-256 `f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6`.  
**Addressing:** Cortex-M3 Thumb-2, flash based at `0x08000000`. Labels below are **reconstructed**, not vendor-provided names. All addresses refer to factory B, **not** the separately compiled open-source Gen2 dictionary.

## Executive findings

1. The stock B firmware configures a four-rank **inserted ADC [analog-to-digital converter] conversion group**, then switches the trigger source from software during zero-current calibration (`ETSIC=7`) to the TIMER0 channel 3 event during running motor control (`ETSIC=1`). The last change occurs at `0x08004FA0` and is reached through motor startup `0x08003392`.
2. TIMER0 is center-aligned (`CAM=0x20`) with period (ARR) `2250` (`0x08CA`) and channel 3 compare `2249` (`0x08C9`). The timer setup passes a prescaler value of zero. At a nominal 72 MHz timer clock, the center-aligned PWM [pulse-width modulation] carrier is approximately **16 kHz** (`72e6/(2*2250)`). The channel-3 event is near the **top of the up/down counting cycle**; exact injected ADC sampling latency and event direction still need tracing and/or measurement.
3. ADC processing is gated around TIMER0 events: TIMER0 update interrupt `0x08005480` calls `0x080049C4` to set `ADC_CTL1.ETEIC` (bit 15) via `0x080049C8`; the ADC interrupt clears that bit in motor states 2 or 3 (`0x08000A90`). Setting ETEIC is **not** the same as issuing software conversion `SWICST` (bit 21).
4. Current feedback passes through offset-subtraction, vector rotations using a sinusoidal quarter-wave table, and a six-sector PWM routine, `0x08004AC0`, that writes three phase channels plus TIMER0 CH3 reference compare. This supports a vector-based motor-control implementation; specific conventional FOC [field-oriented control] equations/gains still need reconstruction.
5. Both persistent thermistor-fault flags feed a **progressive demand-limit reduction** in supervisory code `0x08003F80–0x08003FB8`: decrement a RAM [random-access memory] 32-bit limit by 10 per invocation until it reaches zero. In a non-fault recovery path, the limit can increase by 200 per invocation. These are uncalibrated internal demand units, not known amperes or milliseconds. The flag at 8 kΩ also drives LED [light-emitting diode] status; that LED use is not evidence of direct motor inhibition.
6. The motor shutdown path explicitly clears **TIMER0 primary output enable** (`CCHP.POEN`, bit 15): a call at `0x08003472` supplies a zero-enable argument to helper `0x080055E0`, whose instruction at `0x080055F4` clears bit 15. The ADC interrupt's state-4 path also calls the output-disable helper at `0x08000ACA`. Those are direct bridge-output gating mechanisms, independent of gradual derating.

## ADC trigger sequence and evidence

| Situation | Instruction/site | ETSIC value | Meaning / limits |
|---|---|---:|---|
| Calibration startup | `0x08004C98` → `0x08000B74` at `0x08004C9C` | 7 | Injected conversion software start; calibration explicitly calls the start helper |
| Active motor startup | `0x08003392` calls `0x08004FA0`, then at `0x08004FD0/FD4` programs ETSIC | 1 | TIMER0_CH3 event selected, through full-field register update |
| Motor running | TIMER0 IRQ `0x08005496` → `0x080049C4` | 1 retained | TIMER0 update gates injected ADC trigger via ETEIC (bit 15), **not** software start |
| After motor stop/reconfiguration | `0x08003478` → `0x08004C34(0)` | 0 after clearing bit 12 | The prior ETSIC=1 selection becomes TIMER0_TRGO, but timer/ADC gate is disabled; **not an operational sampling mode** |

**Earlier hypothesis superseded:** a standalone read of `0x08004C34` suggests ETSIC=6/7 as bit 12 toggles, but that ignores intervening `0x08004FA0`. During motor operation the code selects **ETSIC=1**, not EXTI15. This finding should supersede earlier preliminary notes.

Timing validation still needed: precise TIMER0_CH3 edge selection in center-aligned operation, ADC clock/sample-and-hold duration, conversion completion interrupt timing, and any variation by PWM sector. With CH3 compare equal to 2249 while ARR is 2250, compare takes place close to the timer's upper reversal; whether one or both match directions generate the hardware trigger depends on peripheral event routing configuration and must not be guessed.

## TIMER0 configuration and bridge output

| Factory code | Observation |
|---|---|
| `0x08004DB0–0x08004F14` | Configures PA8-PA10 and PB13-PB15 in bridge alternate-function mode and initializes TIMER0 |
| `0x08004E5E` | Prescaler field initialized to 0 |
| `0x08004E62` | Center-aligned count mode constant `0x20` |
| `0x08004E68` | TIMER0 auto-reload/period constant `0x08CA` = 2250 |
| `0x08004E7E` | Calls TIMER0 init helper `0x08005558` |
| `0x08004EDE` | TIMER0_CH3 compare constant `0x08C9` = 2249 |
| `0x08004EF8` | Configures TIMER0 channel 3 using `0x080058E4` |
| `0x08004BE8`, `0x08004C20` | Reasserts CH3 compare 2249 at TIMER0 register `0x40012C40` during PWM synthesis |
| `0x08004C16–0x08004C1A` | Writes three phase duty comparisons at `0x40012C34`, `0x40012C38`, `0x40012C3C` |
| `0x080055E0–0x080055FA` | Helper enables/disables TIMER0 `CCHP.POEN` (bit 15), acting as bridge primary-output gate |
| `0x0800346E–0x08003478` | Motor exit/state-4 path calls gate helper with enable 0, then reconfigures ADC/timer gate |

Reference-clock assumption: current firmware config uses a 72 MHz core/timer target, but the actual clock tree/prescale should be separately decoded if an exact carrier measurement is required.

## Current control and vector transformation

| Factory function | Reconstructed purpose |
|---|---|
| `0x08004D4C` | Read `IDATA0`/`IDATA1`; subtract twice ADC sample from startup offset; clamp each to signed 16-bit; pack pair |
| `0x0800252C` | Main feedback processing in ADC interrupt motor state 3; acquires current pair and calls vector operations |
| `0x08004274` | Uses signed multiplications and `0x08005C00` trigonometric lookup to rotate a two-component vector |
| `0x08004858` | Related reverse/inverse-direction transform using same lookup |
| `0x08005C00` | Quarter-wave sine/cosine lookup derived from table beginning near `0x080073A6` with signed Q15-like values (`0, 201, …, 32766`) |
| `0x08004AC0` | Classifies one of six voltage-vector sectors, performs fixed-point duty calculations, and writes three TIMER0 compares |

The modulation routine uses constants `0x3CE4` (15,588), `0x2328` (9,000), and initial half-period 1125 (`0x0465`). The ratio `15588/9000` is approximately √3, compatible with space-vector modulation geometry. Sector selection uses a Thumb `TBB` table branch at `0x08004B72`.

**Do not overstate:** these operations demonstrate vector-style commutation with coordinated PWM modulation; they do not alone identify the complete factory current-loop control law, fixed-point units, gains, or saturation conditions. PA0/PB0 are physical ADC channels, but assigning those values to phase A/B and sign remains incomplete.

## Thermal and fault path

The PA6 thermistor-like resistance estimate and thresholds were established in Phase 3:

- Filtered PA6 sample -> `10000 * x / (32768 - x)`; `R < 8000 Ω` and `R < 6000 Ω` set persistent flags at `0x20000069` and `0x2000006A` after update-count persistence thresholds.
- In Phase 4 the supervisor at `0x08003F80`, `0x08003F86`, and `0x08003F8C` checks three consecutive fault flags (`0x69`, `0x6A`, `0x6B`). Any 1-valued flag branches to demand-limit reduction.
- At `0x08003FA4–0x08003FB8`, RAM field `0x20000110` is decremented by 10 per visit (unless already <=10, when clamped to zero). A distinct non-fault path at `0x08003FBA` adds 200, subject to additional conditions outside this local block.
- The first thermistor flag also enters indicator/LED processing at `0x08001DAC`, not directly a power-gating routine. Avoid conflating an LED warning with bridge shutdown.
- Separate state-machine handling at `0x0800346E–0x08003478` and ADC IRQ state 4 explicitly clears the TIMER0 output gate; the complete set of reasons for transitions to state 4 has **not yet been established**.

The effective time for thermal derating depends on supervisor invocation rate; neither the 10-unit decrement nor the counter thresholds imply exact physical current or time without additional decoding.

## Key limitations, evidence and next work

The accompanying read-only script (`analyze_phase4.py`) checks **43 Thumb-2 instruction sites, 14 calls/branches, 7 literal loads, and 12 sine table values** in the exact original B image. It also outputs machine-readable evidence tables and a manifest. The script creates a *temporary* linker wrapper solely to disassemble the verified image; no reconstructed flashable binaries or stock image bytes are distributed in the report ZIP.

**Next phase priorities:** (1) inspect the TIMER0 channel-3 event polarity/edge and ADC injected sample timing in full configuration; (2) reconstruct Q15 transform scale, bus current limits, and actual phase-current feedback loop; (3) identify how motor-state transitions, thermistor demands, and protection faults propagate to output gating; (4) independently validate the malformed-looking A/master captures. No ServoFOC implementation work is authorized by this research phase.