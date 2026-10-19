# Gyroor G5 factory firmware — Phase 8: cross-check against hoverboardhavoc's Rust re-implementation

**Analysis date:** 2026-10-17. **Scope:** read-only comparison of the Phase 3–6 reconstructions with an independent, host-tested re-implementation of the same vendor firmware. No firmware was flashed, no hardware was energized, and nothing on `servo/r0-baseline`, R0.1 or R1 changed.

**Method and its limit.** This phase compares *documents against code*: the Phase 3–6 reports in this folder against hoverboardhavoc's Rust source. The factory dumps were not available to this pass, so nothing below re-reads the B image. Where his code makes a claim that the B image can settle, it is listed as a check, either automated in [`analyze_phase8.py`](analyze_phase8.py) (`python3 -I analyze_phase8.py <B>`, **not yet run on the real B image**; tested only on synthetic images) or as a manual instruction check in §7.

All factory addresses are **factory B (slave)** addresses, as in Phases 3–6. Reconstructed names are not factory symbols.

## 1. Sources

| Side | Reference |
|---|---|
| This repo | `research/stock-fw/` Phases 3–6 at `bb0c76a`, factory B `oriFWB.bin` (SHA-256 `f13fad73…0272b6`) |
| Comparison | [hoverboardhavoc/hoverboard-firmware](https://github.com/hoverboardhavoc/hoverboard-firmware) at `67146222919ab46c3d50c94262d0d30ba5c86200` (2026-10-10), GPL-3.0-or-later |
| Main file | `crates/commutation/src/foc.rs` (1,045 lines): fixed-point helpers, sine table, offset calibration, Clarke, Park, circular limit, SVPWM, hall front end, demand ramp, PI record, `foc_step` |
| Supporting | `crates/base/src/pi.rs` (PI arithmetic); `crates/firmware/src/motor.rs` (timer/ADC bring-up and bench notes) |

**What his source is.** His comments cite a private decompile of a *"board20 master GD32F130"* image and *"both offroad images"* (paths under `~/dev/BalanceAgain/` and `~/dev/Declassyfied/`), plus a `specs/` folder that is not published in any branch. None of the stock images or decompiles are public.

**Same MCU as the G5.** The GD32F130 is one of his two target families (his README: one image for GD32F103/STM32F103 and GD32F130 mainboards), and his stock decompile is itself of a **GD32F130** master. His bench pair is an **F103 master** and an **F130 slave** (`motor.rs` line 2134). So his work is not an F103 port that happens to resemble the G5: the stock source he decoded runs on the G5's MCU. Which bench findings were checked on which chip is listed in §3.5.

**His F130 slave is a different board layout from the G5.** It senses phase current on **PB0/PB1** (channels 8/9, `motor.rs` line 2134); G5 B uses **PA0/PB0** (channels 0/8, Phase 3). This matches the `PB0/PB1` in the open-source `defines_2-1-20.h` that Phase 3 flagged as disagreeing with B. That header is therefore probably right for some F130 boards and wrong for the G5, rather than simply wrong. Pin assignments must come from each board, not from his configs.

**Same vendor code, different build.** The constants below match B exactly, so this is the same firmware family. The addresses do not: his hall-read routine is `FUN_080070b4` in his image, while B's hall code is at `0x08002808` / `0x08006A3C`. **Do not transfer any address from his comments to B.** Data (tables, constants, formulas) transfers; locations do not.

**Licence.** His code is GPL-3.0-or-later. This phase only compares and cites it. Copying code from it into ServoFOC would make ServoFOC GPL-3.0 too.

## 2. Summary

| Routine | Phase ref (B) | His ref | Verdict |
|---|---|---|---|
| Zero-offset calibration: 16 × `sample >> 3`, window 30,001–34,499 | P3 `0x08004C84` | `calibrate_offset`, `offset_in_window`, `PhaseOffsets::try_new` | **Match** |
| Shunt current: `sat(offset − 2·sample)`, −32768 → −32767 | P3 `0x08004D4C` | `current_from_adc`, `sat16` | **Match** |
| Clarke: `α = s0`, `β = −(s0·0x49E6 + s1·0x93CC) >> 15`, `0x8001` end-case | P5/P6 `0x08001D28` | `clarke`, `mac_q15` | **Match** (0x93CC = 2·0x49E6) — see §3.6 on rounding wording |
| Sine/cosine: 256-entry quarter-wave, complement `T[255−i]` | P4/P6 `0x08005C00`, table `0x080073A6` | `SIN_QUARTER`, `lookup_sincos` | **Match**; table checkable by script |
| Forward rotation by +θ; axis 0 = demand/torque, axis 1 regulated to 0 | P6 §3 `0x08004274` | `park_forward` (his "d" slot carries torque, "q" is PI'd to 0) | **Match** in maths; **naming differs** (his d/q labels) |
| Inverse rotation by −θ | P6 `0x08004858` | `park_inverse` (`rnd_q15`, wraps, no saturation) | **Match**; saturation behaviour not stated in P6 — §3.6 |
| One PI, setpoint 0, on axis 1: P 100/1024, I 50/8192, out ±32767, integrator ±268,427,264, Ki = 0 clears | P5/P6 `0x080037E8`, init `0x0800378C` | `foc_pi_record`, `base::pi::pi_step` | **Match** |
| Demand path `0x08003560` | P6 §3 | `DRamp::step` | **Differs — and P6 likely resolves his open contradiction** (§3.1) |
| Circular limit: `x²+y² > 32111²`, table rescale | P5/P6 `0x080047F8`, table `0x08007320` | `CIRC_THRESH`, 67-entry `CIRC_GAIN`, index `(sq>>24) − 0x3D` | **Match** on threshold; table checkable by script (§5) |
| SVPWM: 15588/9000, centre 1125, six sectors | P4/P5 `0x08004AC0` | `svpwm_sector`, `svpwm` (full per-sector formulas) | **Match** on constants; his formulas fill a P5 gap (§5) |
| Hall angle table and forward sequence 6→4→5→1→3→2 | P6 §4 `0x08002808` | `BASE_ANGLE`, `FWD_NEXT`, `REV_NEXT` | **Match** (identical values) |
| Hall debounce | P6 §4 `0x08006A3C` | `HallDebounce::step` | **Differs in rule** (§3.2) |
| Interpolation: ±5461 lead at \|step\| > 2, `dir·10922/blend`, 85/15 blend, 60° gate, 200-call timeout | P6 §4 | `Commutation::step` | **Match**, with two edge details (§3.4) |
| Speed: `dir·46081/period`, window | P6 §4 (+0x18, "3,201-call window") | `EDGE_RATE_CONST` (computed, discarded), `SPEED_WINDOW = 320` | **Differs** (§3.3) |
| Hall fault: invalid-state count > 64 | P6 §4 | `dwell·250 > 16000` | **Match** |
| TIMER0: centre-aligned, ARR 2250, RCR 1, CH3 = 2249 | P4/P6 | `PERIOD`, CH3 bring-up | **Match**; trigger mechanism explained (§3.5) |
| ADC trigger: software start for calibration, `ETSIC = 1` (CH3) when running, ETEIC set every period | P3/P4 | `motor.rs` bring-up notes | **Match**, and his bench work explains *why* (§3.5) |

## 3. Differences and clarifications that matter

### 3.1 The demand path at `0x08003560` (most important)

**Phase 6 reading:** `V0 = demand_limiter(demand@0x2000023E, P)`, where `P = |x · V0_prev / 10000 · 94|`. If `P/1000` is not above `[0x2000008E]`, it returns `demand + [0x200000AA]` and resets the counter `0x2000023C` to 32. Otherwise the counter climbs to 250 and the demand is pulled toward zero by it.

**His port (`DRamp::step`, `foc.rs` lines 763–788):** compares **`demand / 1000`** against `RAMP_THRESH = 800`, and in the relax branch does `s += RAMP_STEP` with `RAMP_STEP = 0`, where `s` is a **persistent held state**, not the demand. Because no stock-native demand (±28,500) exceeds 800 × 1000, every demand takes the relax branch, so `s` never moves from 0.

**His own verdict** (`motor.rs` lines 1001–1010): his FOC arm "runs its q-PI at reference 0 with no d-axis drive behind it", and the path is "NOT signed off for producing torque until the stock-side re-derivation of that ramp resolves a contradiction in the source". In other words, his port cannot turn a wheel, and he knows the ramp decode is wrong somewhere.

**The two readings have the same shape** (same counter seed 32, cap 250 = `0xFA`, slew 32 = `0x20`, same four-way overload branch). They differ in two places:

| | Phase 6 | His port |
|---|---|---|
| Compared quantity | power proxy `P/1000` vs `[0x2000008E]` | `demand/1000` vs 800 |
| Relax-branch output | `demand + [0x200000AA]` (stateless pass-through) | `s + RAMP_STEP` (held state) |

If Phase 6 is right, both of his symptoms disappear: the demand passes straight through to the torque axis below the power threshold, and the counter only engages under overload. That is also the only reading under which the stock board can drive at all. **His 800 and 0 are then probably the initial values of `[0x2000008E]` and `[0x200000AA]`.**

What settles it in B (manual, §7): whether `0x08003560` loads its working value from `[0x2000023E]` on every call (Phase 6) or from a RAM slot it also writes back (his reading), and which register holds the comparand before the divide by 1000.

### 3.2 Hall debounce rule

**Phase 6:** "after a change, further changes are ignored while a per-bit counter (reload `[+0x0C]`) is nonzero."

**His port (`foc.rs` lines 454–492):** a line may register an edge if **either** it is not the line that changed most recently **or** its own lockout has drained. An accepted edge clears the other two lines' "most recent" markers. Because consecutive valid sectors always move *different* hall lines, the lockout never blocks real rotation; it only blocks the same line toggling twice before any other line moves (bounce).

**Why it matters:** his comments record that the plain per-line lockout (the Phase 6 wording, read literally) was a real bug in his port. With the stock reload of 150 periods (9.375 ms at 16 kHz) it caps tracking at about 53 Hz electrical. On his bench (2026-08-12) the motor stopped accelerating at about 40 % throttle with current pinned at the supply limit. He cites the disjunction from three independent sources, including the hall routine in his own decompile.

**Action:** re-read the eligibility test in B's sampler `0x08006A3C` for a second condition (a "last changed line" marker) beside the counter test. Also find the reload value: his is **150 (`0x96`)**, read from the `.data` initialiser of the commutation struct in his image (his RAM `0x20000280`). In B the struct is at `0x20000268`, so the reload is at `0x20000274` (`[+0x0C]`), and its initial value will be in B's `.data` copy source.

### 3.3 Speed estimate and window

**Phase 6:** `+0x18` holds signed speed `dir · 46081 / period` (unit unresolved), and `+0x16/1C/1E` hold a sector count and a **3,201-call** window.

**His port:** computes `dir · 46081 / new_interval` but **discards it** ("computed but unused by the per-period angle math"). His published speed is a signed edge count latched every **320** periods (`SPEED_WINDOW = 0x140`; the test is `window > 320`, so the latch happens on the 321st period).

**Two things to check:**
- **3,201 versus 320/321.** These differ by about 10×. Either one decode misreads the immediate, or the builds genuinely differ. Re-read the window compare instruction near the `+0x1C/+0x1E` accesses.
- **The 46081 term.** B stores it at `+0x18`. His dropping it is only safe if nothing in B reads `+0x18`. Search B for readers of `0x20000280` (`0x20000268 + 0x18`), for example telemetry in the UART link (Phase 7) or the demand limiter.

### 3.4 Interpolation edge details

Both readings agree on the formula, the ±5461 (±30°) lead word, the 85/15 period blend, the 60° gate and the 200-call timeout. His code pins two details that Phase 6 states loosely:

- **The 60° gate is tested before adding.** `if |acc| < 10922 { acc += increment }`, so the accumulator can end up to one increment past 60°. Phase 6 says interpolation "stops once its magnitude reaches 10922". Check the compare-then-add order in B.
- **After the 200-call timeout the angle is the sector centre.** The table angle is rewritten first every period, and the lead word and accumulator are no longer added. Phase 6 says "offset and step are cleared"; his code clears the lead word and stops adding, but leaves the per-tick increment unchanged. The published angle is the same either way (the increment is recomputed on the next edge).

### 3.5 ADC trigger: his bench work explains the Phase 3/4 observations

Phase 3/4 found a pattern without explaining it: calibration uses a **software** injected start (`ETSIC = 7`), running mode switches to the **CH3 event** (`ETSIC = 1`) only at motor start-up (state 1), and the TIMER0 update interrupt sets `ETEIC` every period.

His bench notes (`motor.rs` lines 783–792, 1312–1326 and 1340–1347, 2026-07-26) account for all three. Which chip each finding was measured on:

| Finding | Measured on | Source |
|---|---|---|
| CH3 channel link (`ETSIC = 1`) gives no conversions while disarmed | **Both F103 and F130** ("converted on neither family") | line 1342 |
| A once-only `ETEIC` can lose the start-up race | F103 master only | lines 783–785 |
| A 1-tick trigger (compare 2249 via TRGO) is not latched | F103 master only; "the F1x0's latch behavior is unmeasured" | lines 1312–1326 |
| `PERIOD − 50` trigger converts | Both (F130: "it converts at this width") | line 1326 |

The findings:

- **The CH3 channel link (`ETSIC = 1`) rides the CH3 output, which the main output enable gates.** With the bridge disarmed it produces no conversions. That is why stock must calibrate with a software start, and can only switch to `ETSIC = 1` in the state that enables `POEN`.
- **The stock firmware never relies on a one-time `ETEIC`.** It re-asserts the bit every PWM period. On his board a once-only `ETEIC` started the group on 4 of 4 power-ups with one build and 0 of 2 with another build of the same source.
- **A compare of 2249 can be too narrow.** Using TRGO from the CH3 compare reference, 2249 gives a 1-tick (13.9 ns) pulse that the ADC (12 MHz, APB2/6) did not latch. 2249 produced no conversions; 2245 did. He now uses `PERIOD − 50` (694 ns). This was measured on his TRGO path, not on stock's `ETSIC = 1` path, so it is a risk for any ServoFOC design that triggers from TRGO, not evidence that stock misses samples.

Also from his code: **7.5 ADC cycles** is the stock injected sample time on the phase-current channels (`motor.rs` line 1352, "the stock inserted-group value"). Phases 3–6 do not state the sample time; it can be read from the `ADC_SAMPT` write in B's ADC set-up at `0x08004C84`.

**A naming trap.** Phase 6 calls CH3's mode `0x70` "PWM mode 2"; his code calls it "PWM mode 1". Both are right: `0x70` is "PWM mode 2" in ST naming and "PWM mode1" in GigaDevice naming (where `0x60` is "PWM mode0"). Use the GD32 names in ServoFOC code.

### 3.6 Rounding and wrap behaviour

- **Clarke rounding.** Phase 6 says `>> 15` rounds toward zero. His `mac_q15` adds `2^15 − 1` to negative values before the shift, which is also round-toward-zero; his comment calls it "round-half-away-from-zero", which is a mislabel. The arithmetic agrees with Phase 6.
- **Inverse rotation and circle rescale do not saturate in his port.** `park_inverse` and the circular-limit scaling use `rnd_q15`, which truncates to 16 bits and **wraps** on overflow, by design in his port. Phase 6 does not say whether `0x08004858` saturates. If ServoFOC reproduces stock bit for bit, confirm this in B; a wrap there would flip a phase voltage's sign.

## 4. What his code adds that is not stock

Do not mistake these for factory behaviour when using his code as a reference:

- **Stall-aware anti-windup on the axis-1 PI** (`QAxisPi::step`). On a stalled rotor the stock PI winds up on a small residual bias and pegs its output at about 1 A (his bench, 2026-06-15). Stock gets away with it because a balancing board never truly stalls. **Directly relevant to a servo, which holds position at standstill.**
- **The debounce window in microseconds** (9,375 µs) instead of a period count, so it survives a PWM frequency change.
- **TRGO from the CH3 compare reference at `PERIOD − 50`** instead of stock's `ETSIC = 1` channel link (§3.5).
- **A calibration gate as a type** (`PhaseOffsets`): out-of-window offsets make FOC impossible to construct, rather than setting a status byte.
- **`DutyOrder`**, a per-motor permutation of the three SVPWM outputs onto CH0–CH2, left as a bench-settled parameter. This is his version of the open Phase 5/6 question of which physical phase PA0 and PB0 measure.
- **A different ADC rank order in his examples.** His unit tests use channels `[8, 0]` (PB0 first); B's rank 1 is channel 0 (PA0), and Clarke takes `α` from rank 1. His ranks are board configuration, so this is not evidence about stock, but **ServoFOC must keep PA0 first** if it reuses the stock angle offset.

## 5. Where his work fills Phase 3–6 gaps (to verify, not to trust)

| Open item | His value | How to verify in B |
|---|---|---|
| Circular-limit table at `0x08007320` (P5/P6: "table-indexed rescale", contents not listed) | 67 Q15 gains, 32494 → 22661, index `(sq >> 24) − 0x3D` | `analyze_phase8.py`. The layout already fits: 67 halfwords end exactly at the sine table (`0x080073A6`), and the table starts exactly where the CRC tables end (`0x08007320`, `analyze_phase6.py`) |
| SVPWM per-sector arithmetic in `0x08004AC0` (P5: sector dispatch found, formulas not reconstructed) | `svpwm_sector` and `svpwm` (lines 254–320): sector from `p = (−9000β + 15588α)/2`, `q = (−9000β − 15588α)/2`; per-sector base and two compares with round-toward-zero `>> 17` / `>> 18` and a `+1125` centre | Walk each of the six `TBB` targets at `0x08004B72` against the matching arm |
| Hall debounce reload | 150 periods (9.375 ms at 16 kHz) | `.data` initial value for `0x20000274` (§3.2) |
| Injected sample time | 7.5 ADC cycles | `ADC_SAMPT` write in `0x08004C84` (§3.5) |
| Current scale (counts per amp) | **Unsettled in his work too**: two slopes, 81 and 306 counts/A, disagree (`motor.rs` lines 995–1000) | Bench sweep with a known current; stock does not contain an amps conversion |

## 6. Consequences for ServoFOC

These follow from Phases 3–6 and this cross-check together:

1. **Stock has no torque-current loop.** Axis 0 is voltage-mode demand with a power-style overload limiter; the single PI only drives axis 1 to zero (Phase 6, confirmed by his structure). A servo needs an added current PI on axis 0, or must accept voltage-mode torque.
2. **At standstill, the angle is the hall-sector centre.** That is 60° electrical granularity and up to 30° error, so standstill torque can fall to cos 30° ≈ 87 % of the ideal. For position, hall-only feedback gives 6 sectors per electrical revolution; with a 15-pole-pair hub motor (his fleet's figure, **unverified for the G5**) that is 90 steps per wheel revolution, 4° mechanical. Finer servo positioning needs another sensor or a sensorless estimator.
3. **Holding torque at standstill is exactly where the stock PI winds up** (§4). Plan an anti-windup policy before closing a position loop.
4. **Decode `0x08003560` before reusing either reading** (§3.1). It decides whether the demand reaches the motor directly.
5. **Keep the stock trigger design or replace it knowingly.** The stock order (software-start calibration while disarmed, then `ETSIC = 1` with per-period `ETEIC`) is self-consistent. A TRGO design needs a trigger pulse wider than one tick (§3.5).

## 7. Checks to run

**Automated** — `python3 -I analyze_phase8.py <B>`:
- circle table at `0x08007320` equals his 67 entries, and its layout fits between the CRC and sine tables;
- sine table at `0x080073A6` equals `round(32767·sin(i/256·π/2))`, anchors 0, 201, 23027, 23170, 32766;
- literal-pool words `0x3D759621` and `0xF0002000` are present.

**Manual, in B:**
1. `0x08003560`: source of the working value (loaded from `[0x2000023E]` each call, or a held slot written back) and the comparand of the `/1000` test (§3.1).
2. `0x08006A3C`: the hall eligibility test (counter only, or counter OR "not the last-changed line") (§3.2).
3. Initial values of `[0x2000008E]`, `[0x200000AA]` and `0x20000274` in the `.data` copy source (expected 800, 0 and 150 if the builds agree).
4. The speed-window compare near `+0x1C/+0x1E` of the struct at `0x20000268`: 3,201 or 320 (§3.3); readers of `0x20000280`.
5. Compare-then-add order of the 60° gate in the interpolation (§3.4).
6. Saturation, or not, at the end of `0x08004858` and of the circle rescale (§3.6).
7. `ADC_SAMPT` value written in `0x08004C84` (§3.5).
8. The six SVPWM arms of `0x08004AC0` against his `svpwm` (§5).

## 8. Evidence grading

| Finding | Confidence | Basis |
|---|---|---|
| Same vendor firmware family | High | 15+ exact constant and table matches; table layout fits B's addresses |
| Addresses do not transfer | High | His hall routine `0x080070B4` vs B's `0x08002808`/`0x08006A3C` |
| Clarke, rotations, PI, offsets, hall angles, interpolation formula match | High | Identical constants and arithmetic in both |
| Circular-limit table contents | Moderate until `analyze_phase8.py` passes on B | Exact-fit layout; values from his code only |
| Phase 6 reading of `0x08003560` is the correct one | Moderate | It explains his port's failure and fits stock being able to drive; instruction check pending |
| Hall debounce needs the OR rule | Moderate | His bench failure with the plain rule plus three cited sources; B instruction check pending |
| Speed window 3,201 vs 320 | **Unresolved** | One of the two decodes is wrong, or the builds differ |
| Wrap vs saturate in inverse rotation | **Unresolved** for B | His port wraps by design |

**Boundary:** documentation and static comparison only. No stock flash is touched, no R-series code is changed, and no code from hoverboardhavoc's repository is copied into this one.
