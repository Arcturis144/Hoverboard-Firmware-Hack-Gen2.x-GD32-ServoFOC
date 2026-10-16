# Factory firmware decoding — Phase 5: current-loop mathematics and motor-state review

**Scope:** pre-programming, read-only reverse engineering. Reviewed 2026-10-15. The source is the **B/slave factory image** `oriFWB.bin`, length 65,536 bytes, SHA-256 `f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6`. GD32F130C8 / Cortex-M3 / Thumb-2 code is based at `0x08000000`. The original manufacturer's images are **not** committed. The primary and alternate A/master captures still have unresolved instruction/vector consistency problems (see Phase 2).

This report reviews the Phase 5 disassembly against the Phase 2–4 findings. **All names below are reconstructed, not original firmware symbols.** Do not conflate addresses with the independently compiled Gen2.1.20/GD32F130 reference ELF [Executable and Linkable Format].

## 1. Control-path overview

```text
ADC [analog-to-digital converter] inserted conversions:
  PA0 / PB0   ->  IDATA0 / IDATA1
   -> 0x08004D4C: subtract startup shunt offsets; saturate two int16 samples
   -> 0x0800252C: motor current/control update
      -> 0x08001D28: Clarke-style two-current transform
      -> 0x08004274: trigonometric forward rotation (Park-style)
      -> additional reference and regulator logic, including 0x080037E8
      -> 0x080047F8: magnitude-dependent modulation limiting
      -> 0x08004858: reverse rotation (inverse-Park-style)
      -> 0x08004AC0: six-sector space-vector-like PWM [pulse-width modulation]
      -> TIMER0 CH0 / CH1 / CH2 compare registers
TIMER0 CH3 event -> inserted ADC group (running mode)
```

**Confirmed:** all named call relationships in the chain occur in factory B. The Clarke-style arithmetic, paired Q15 [signed fixed-point, 15 fractional bits] rotations, trigonometric lookup, and six-sector compare synthesis are instruction-supported. **Not confirmed:** exact physical phase-current orientation, whether each regulator acts on `d` or `q` in the adopted sign convention, current units or exact physical torque per internal demand unit.

## 2. Current measurements and Clarke-style transform

Previous Phase 3 evidence: `0x08004D4C` obtains two signed 16-bit current-related quantities from inserted ADC channels PA0 and PB0:

```c
sample0 = sat_s16(calibrated_offset_PA0 - 2 * IDATA0);
sample1 = sat_s16(calibrated_offset_PB0 - 2 * IDATA1);
```

At **`0x08001D28`**, the processor loads these two signed halfwords. `0x08001D30` stores the first input as the first output component; `0x08001D34` and `0x08001D3E` multiply both inputs by `0x49E6` (18,918); `0x08001D44–0x08001D50` adds the second input twice, negates, applies signed rounding and shifts 15 bits.

Approximate reconstructed operation (excluding exceptional end-range encoding):

```c
i_alpha = sample0;
i_beta  = sat_s16(round_shift15(-18918 * (sample0 + 2*sample1)));
```

`18918 / 32768 ≈ 0.57733154`, close to `1/sqrt(3)`. This is a **Clarke-style two-shunt current transformation**, with a sign convention that cannot yet be assigned to named motor phases. The implementation includes signed bounds and a special `0x8001` representation at the lower end; a replacement must not assume a plain mathematical cast reproduces every edge case.

## 3. Rotation, control and inverse rotation

- **`0x08004274`**: obtains two trigonometric values from `0x08005C00`, multiplies them with the two vector components, forms sum/difference combinations and scales by 15 bits with saturation. This is consistent with a forward Park-style reference-frame rotation.
- **`0x08004858`**: uses the same trigonometric routine and paired products, but the complementary sum/difference order. This is consistent with the inverse rotation.
- **`0x08005C00`**: reconstructs trigonometric quadrants using a quarter-wave lookup table at `0x080073A6` (Q15-like range).
- **`0x080037E8`**: a concrete **PI [proportional–integral] regulator structure**. The input error is `setpoint - feedback` at `0x080037EA`. The configuration pointer includes signed proportional and integral gains at offsets `+0x00` and `+0x04`, scale divisors at `+0x02` and `+0x06`, output limiting values at `+0x08/+0x0A`, integrator bounds at `+0x0C/+0x10` and an integrator accumulator at `+0x14`. The code clamps the accumulator and clamps the summed P/I output. A zero integral gain resets the integrator accumulator to zero.
- **`0x0800252C`**: acquires the current pair, calls `0x08001D28` then `0x08004274`, feeds rotating-frame quantities into regulator/reference functions including `0x080037E8` and `0x08003560`, invokes `0x080047F8` and `0x08004858`, then tail-branches to modulation at `0x08004AC0`.

The presence of `0x080037E8` in this feedback path is **strong evidence of closed-loop vector current regulation**, beyond simple six-step commutation. However, exact gain interpretations, integrator sample period, axis polarity, demand-to-ampere scale and thermal-limit application inside the command preparation are not fully reconstructed. Do not present the PI values as physical gains until the configuration objects and units are decoded.

## 4. Modulation and hardware timing

`0x08004AC0` uses constants `0x3CE4` (15,588) and `0x2328` (9,000), whose ratio is approximately `sqrt(3)`. It picks one of six sectors with a `TBB` [table branch byte] dispatch at `0x08004B72`, then writes TIMER0 motor compare values at `0x40012C34`, `0x40012C38`, and `0x40012C3C`. It writes constant 2,249 to channel 3's compare register `0x40012C40`. If status byte `0x20000269` is nonzero, it instead zeros the three phase compare values (`0x08004BFE–0x08004C14`).

As documented in Phase 4, the running firmware sets **`ETSIC=1` (TIMER0 channel 3)** for the four inserted ADC conversions; motor startup enters this configuration at `0x08003392 → 0x08004FA0`. TIMER0 is center-aligned with auto-reload 2,250 and prescaler zero. Nominal PWM frequency is approximately **16 kHz if the timer clock is 72 MHz**. The exact up/down compare edge that triggers ADC sampling, sampling latency, and control-loop update cadence are still open.

## 5. Factory motor state machine — explicit five-way dispatch

At `0x08003414`, byte `0x20000260` indexes a five-case branch table (bytes `03 11 16 19 23` at `0x08003428`). Decode:

| State | Case entry | Confirmed code path and transition |
|---|---|---|
| **0 — preflight** | `0x0800342E` | Calls `0x08004A80` to await/read sensor conversions; checks calibration status `0x200002B0`, another status `0x20000296`, and phase PWM inhibit byte `0x20000269` are all zero, plus readiness at `0x2000023A == 1`. Only then stores state 1. |
| **1 — motor initialization** | `0x0800344A` | Calls `0x08003384`: initializes current variables, selects TIMER0_CH3 ADC trigger, enables timer interrupts and sets primary outputs through `0x080055E0(…,1)`; then stores state 2. |
| **2 — transition into regulation** | `0x08003454` | Stores state 3; the ADC interrupt also contains logic that advances state 2 to 3 at `0x08000AC0`. |
| **3 — active regulation** | `0x0800345A` | Remains active while `0x20000269 == 0`, `0x20000296 == 0`, and `0x2000023A != 0`; otherwise stores state 4. The ADC interrupt calls `0x0800252C` in state 3 at `0x08000ABA`. |
| **4 — shutdown/cleanup** | `0x0800346E` | Calls `0x080055E0(…,0)`, clearing TIMER0 `CCHP.POEN` (primary output enable); reconfigures ADC trigger gating; clears command channels and readiness, then returns to state 0. The ADC interrupt also disables primary outputs in state 4. |

This shows **explicit command/state gating** separate from the gradual thermal demand limiter. Functional meanings of status bytes `0x20000296` and readiness `0x2000023A` still need upstream caller/writer tracing, and other transition guards elsewhere may exist. Do not equate every transition to state 4 with an overtemperature fault.

## 6. Thermal limiting reviewed against the output path

Phase 3 identified PA6 thermistor-like resistance `R ≈ 10000*x/(32768-x)`, with persistence-filtered flags for **R < 8 kΩ** at `0x20000069` and **R < 6 kΩ** at `0x2000006A`. These are resistance thresholds, not calibrated degrees Celsius. Phase 4 established their usage in the supervisor at `0x08003F80–0x08003FB8`:

- If either thermal flag or a third status `0x2000006B` is asserted, the signed/internal demand ceiling `0x20000110` is **decremented by 10 per supervisory visit**, clamping to zero.
- The non-fault branch can increase that limit by **200 per supervisory visit**, subject to extra state conditions.
- The first thermal flag is also consumed by indicator logic; this does not itself mean a hardware bridge shutdown.
- A separate hardware gate is confirmed in the state-4 path. The evidence **does not establish** that the thermal flags directly set the state-4 condition.

This **resembles the planned thermal-aware torque/current limiting policy in architecture**, but is **not proven to be a current-based winding-heating model**: no recovered term yet estimates Joule loss `I²R`, thermal capacity, or winding temperature evolution. Internal limit units, supervisor frequency, fault recovery semantics and final demand-to-current transfer still need tracing.

## 7. Evidence grading and remaining work

| Finding | Confidence | Basis |
|---|---|---|
| Two-shunt Clarke-style conversion with `0x49E6` | High | Signed loads, exact multiply/add/negate, Q15 shift, bounds |
| Trigonometric forward and reverse rotations | High | Complementary signed products and common LUT call |
| Generic PI regulator and its field offsets | High | Error, gains, integrator accumulation/clamping, output clamping |
| Specific d/q axis signs, controller gains and physical units | **Unresolved** | Need RAM configuration initializer and complete call arguments |
| Six-sector PWM compare generation | High | Six-way table, integer geometry, MMIO [memory-mapped input/output] writes |
| Five-state control dispatch | High | Literal jump-table bytes and branch-entry code |
| Conditions of all fault/status flags | Partial | Only some readers/writers fully followed |
| Thermal demand derating | High for internal limiter; **partial** for physical effect | Flag reads and RAM decrement confirmed; downstream unit mapping not complete |
| I²R thermal estimator | **Not found** | Current review does not support that claim |
| Exact ADC sample edge | **Unresolved** | Hardware source identified; direction/latency not established |

### Next decoding targets

1. Trace writers and field initialization for `0x20000296`, `0x20000269`, `0x2000023A`, PI configuration at `0x200004F0`, and the supervisory limit `0x20000110`.
2. Reconstruct both PI axis input/output ranges, anti-windup/quantization behavior, and the path from demand ceiling to signed current reference.
3. Confirm TIMER0_CH3 ADC triggering at both counting directions and the exact conversion-to-PWM-update synchronization.
4. Continue to treat A/master raw captures as potentially internally inconsistent until readback method and vector offsets are explained.

**Boundary:** This is a static decoding report, not a firmware implementation or hardware validation. No factory flash, R0.1, R1, or RoboDurden repository modifications.
