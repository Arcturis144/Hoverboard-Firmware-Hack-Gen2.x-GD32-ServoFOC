# Gyroor G5 B/slave factory firmware — Phase 5: Control law, thermal scheduling and state machine

**Analysis:** 2026-10-15  
**Scope:** Read-only decoding of factory image, GD32F130C8 Cortex-M3 Thumb-2. This is **not** an implementation change or flashing recommendation. **R0.1 and R1 remain untouched.**

## Provenance and confidence

- Input: `oriFWB.bin`, 65,536 bytes, SHA-256 `f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6`.
- Flash base `0x08000000`. RAM references start at `0x20000000`.
- All named functions below are **reconstructed labels**; the factory binary contains no original symbols.
- `analyze_phase5.py` checks **69 actual Thumb instruction sites**, **18 literal constant sites**, and all five state-machine table entries. It creates six evidence CSVs plus a manifest. ROM bytes and temporary disassembly ELF are **not** included in the package.
- Compiled `Gen2` F130 reference (pinned `a2d155baa7fbc4ad2647e93900942b8ef2bf633b`) is a semantic peripheral baseline, not the manufacturer's source. All addresses below are **stock B** addresses.

## 1. Clarke → Park → PI → inverse Park → six-sector PWM: now instruction-supported

The code at `0x08001D28` accepts two signed 16-bit shunt values packed in a 32-bit word, retains the first component and generates the second component using constant `0x49E6` = **18,918**. Accounting for signed rounding and saturation, its approximate transformation is:

```c
alpha = shunt_1;
beta  = clamp_s16(-((shunt_1 + 2*shunt_2) * 18918) / 32768);
```

Here `18918/32768 = 0.57733154296875`, extremely close to `1/sqrt(3) = 0.577350269...`; the sign reflects shunt wiring/convention. This is a recognizable **two-shunt Clarke transform**. Because the factory clamps/rounds signed fixed-point values, the formula above is explanatory pseudocode rather than a bit-for-bit reimplementation.

`0x08004274` performs a trigonometric vector rotation using `0x08005C00` (Park-like transform). `0x08004858` applies the reverse rotation. `0x08004AC0` performs six-sector PWM synthesis (corresponding to space-vector modulation geometry); the final values are written to TIMER0 compare registers. Taken together, this is convincing evidence of factory **FOC [field-oriented control]**, not just block commutation. Exact physical phase and D/Q axis naming depend on angular offsets and shunt polarity that remain unknown.

### Signal path and RAM [random-access memory] addresses

| RAM / hardware | Stock function | Traced meaning |
|---|---|---|
| `0x2000024C` | `0x08004D4C` / `0x0800252C` | Packed offset-adjusted shunt pair (from PA0/PB0 inserted ADC [analog-to-digital converter]) |
| `0x20000250` | `0x08001D28` | Stationary `alpha/beta` current pair, after Clarke |
| `0x20000254` | `0x08004274` | Rotated current pair, Park-like |
| `0x20000258` | `0x080037E8` / `0x08003560` | Rotating-frame voltage/control output pair |
| `0x2000025C` | `0x08004858` | Inverse-rotated voltage vector |
| `0x40012C34`, `...38`, `...3C` | `0x08004AC0` | Motor phase PWM compares |

The routine at `0x080047F8` checks the **squared magnitude** of a two-axis command against constant `0x3D759621` = **1,031,116,321 = 32,111²**. If outside the circle, it rescales both components together using a lookup table at `0x08007320`. This is vector **magnitude saturation**, not arbitrary independent clipping of each phase.

## 2. Fixed-point PI controller reconstructed

Routine `0x080037E8` computes error = `setpoint - measured`, accumulates an integral term with 32-bit saturation, calculates separate signed integer divisions, sums the terms and clamps the result to signed 16-bit limits.

`0x0800378C` initializes control data at `0x200004F0`, including:

| Parameter | Factory value | Role |
|---|---:|---|
| `P` numerator | 100 | Proportional multiplication |
| `P` denominator | 1,024 | Proportional division |
| `I` numerator | 50 | Integral accumulator increment multiplier |
| `I` denominator | 8,192 | Integral contribution division |
| Integrator min/max | ±268,427,264 | Anti-windup saturation of 32-bit accumulator |
| Output min/max | −32,767 / +32,767 | Signed control output clamp |

In arithmetic form, ignoring signed integer truncation and saturation edge cases:

```c
error = setpoint - measured;
accumulator = clamp(accumulator + 50*error,
                    -268427264, +268427264);
output = clamp((100*error)/1024 + accumulator/8192,
               -32767, +32767);
```

These are **digital gains**, not physical amperes, newton-metres or volts. The controller at `0x0800252C` invokes this PI routine with a zero reference and the **second rotating current component**; the other channel is handled by separate current/voltage command logic including `0x08003560`. D/Q sign and role naming require angle-polarity verification. The PI routine runs on the state-3 ADC interrupt path, so nominal frequency depends on successful hardware triggering and interrupt service, not the 250 Hz supervisor tick.

## 3. Thermal limit definitely reaches the inner motor command

Phase 4 established that the supervisor at `0x08003F80` checks thermal flags `0x20000069` and `0x2000006A` plus another flag `0x2000006B`. On any active fault, field **`0x20000110`** decreases by **10 units per supervisor call** to zero. In a permitted non-fault branch, it can rise by **200 units per call** and the routine also applies a nominal 28,500-unit ceiling.

Phase 5 traces the **downstream command chain**:

```text
thermal/fault flags at 0x20000069–0x2000006B
    ↓
supervisor cap at 0x20000110 (−10 per visit)
    ↓
comparison/clamping of requested magnitude at 0x20000128
    ↓
signed demanded command written to 0x2000023E
    ↓
inner control routine 0x08003560
    ↓
two-axis voltage vector at 0x20000258
    ↓
vector-magnitude limiter → inverse Park → TIMER0 PWM
```

This **confirms** progressive thermal/fault limitation influences motor drive, not merely LEDs [light-emitting diodes]. Importantly, a numeric cap on the command is **not a calibrated phase-current ceiling**. Do not label the 28,500 units as amperes, torque, or a known current limit without further code/hardware calibration.

**Recovery qualification:** the PA6 threshold routine at `0x08001708` **sets** fault bytes but does not itself clear them. The supervisor's +200 non-fault recovery path is real, but not evidence the thermistor fault clears automatically when the motor cools. Clearing elsewhere in the state machine or on reset remains to be found.

## 4. Scheduler decoded: real-time scale for protection

The factory uses the SysTick [system tick timer] exception at `0x080053E8` to maintain a 20-entry callback table at `0x20000308`; it decrements task delays, queues pending executions, and reloads per-task repeat intervals. The foreground dispatcher at `0x08004920` invokes callbacks through a function pointer (`BLX R0`). SysTick setup at `0x08004982–0x0800499A` computes `(SystemCoreClock / 250) - 1` for the reload value.

At a **72 MHz actual system clock**, the intended scheduler rate is **250 ticks/second = 4 ms/tick**.

| Registration | Callback | Initial ticks | Recurrence | Nominal frequency |
|---|---|---:|---:|---:|
| `0x08006C28` | `0x08003850` sensor/thermal processing; calls `0x08001708` | 0 | 1 tick | 250 Hz |
| `0x08006C32` | `0x08003C7C` supervisory demand limit | 100 | 1 tick | 250 Hz after ~400 ms initial delay |
| `0x08006C3C` | `0x08001D80` another task | 100 | 25 ticks | 10 Hz after ~400 ms initial delay |

The thermal routine's 8 kΩ counter must exceed 2,900 updates; the 6 kΩ counter must exceed 1,900 updates. Nominal time under continuous threshold violation is therefore ~**11.6 s** and ~**7.6 s**, respectively. Once fault derating is invoked every tick, the maximum reduction rate is **2,500 internal units/second**. For an initially full 28,500-unit cap, the arithmetic 28,500/2,500 gives **11.4 s to zero**, absent resets/other branches. The conditional +200 recovery branch could traverse the same numerical range in ~0.57 s **only if all recovery conditions are satisfied and the persistent fault bytes are cleared somehow**.

These are **nominal instruction-derived times**, contingent on the configured clock, uninterrupted task scheduling, and foreground capacity. No real-time hardware capture has yet verified the cadence under load.

## 5. Explicit five-state motor-output state machine

At `0x08003414`, a `TBB` [table branch byte] dispatch decodes five state entries from the actual table bytes (linear disassemblers can mistakenly interpret these bytes as instructions):

| State | Dispatch target | Confirmed behavior |
|---|---|---|
| 0 | `0x0800342E` | Runs ADC helper and checks current-calibration status (`0x200002B0`), two inhibit/status bytes (`0x20000296`, `0x20000269`), and motor request (`0x2000023A == 1`) before advancing |
| 1 | `0x0800344A` | Calls motor setup (`0x08003384`), which selects TIMER0_CH3 ADC trigger and eventually enables POEN [primary output enable]; enters state 2 |
| 2 | `0x08003454` | Advances toward state 3 (ADC IRQ also supports 2→3) |
| 3 | `0x0800345A` | Active control; enters state 4 if either inhibit/status byte is nonzero or motor request becomes zero |
| 4 | `0x0800346E` | Clears TIMER0 CCHP.POEN; stops trigger gating, zeroes output vector, resets internal request and returns to state 0 |

The ADC interrupt additionally disables POEN if it sees state 4. We have explicit startup interlocks and motor shutdown paths. **It is not yet established that the thermistor flags directly request state 4**; their confirmed downstream path is the progressive command limiter.

## 6. ADC timing: what is and is not settled

Phase 4 showed that active injected ADC trigger selection is `ETSIC = 1` (TIMER0_CH3), and that center-aligned TIMER0 uses ARR=2250, channel-3 compare=2249, with prescaler=0. Center-aligned CAM value `0x20` corresponds to a mode where **compare interrupt flags are asserted on the down-counting half**; see [GD32F130 TIMER0 CAM register definition](https://docs.rs/gd32f1/latest/gd32f1/gd32f130/timer0/ctl0/enum.Cam.html).

This places the **compare event near the top turnaround**, but alone does not prove that the ADC input sees exclusively the down-count match; the distinction between output-compare event routing, flags, polarity, and ADC trigger edges still requires vendor event-path interpretation or measurement. The four sequential injected sample-and-hold conversions also have nonzero timing skew. Avoid claiming a numerically exact current sampling phase until those details are known.

## Status and next targets

**Confirmed from actual B instructions:** Clarke constant and signs; Park-like rotation and inverse; one fixed-point PI controller and its numeric gains; circular 32,111-unit vector limit; fault cap propagation to inner command; 250 Hz nominal supervisor/thermal cadence; explicit five-state motor enable/disable state machine.

**Still unresolved:** calibration of current to amperes and phase naming; full second-axis control law; precise TIMER0_CH3 trigger edge and four-rank conversion completion timing; source and recovery/reset of each persistent fault; validation of A/master captures and differences.

This phase is **analysis only**. No R1 work, no flash programming, no change to `servo/r0-baseline`.