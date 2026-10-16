# Gyroor G5 factory firmware — Phase 6: direct B verification, rotor-angle generation, bridge configuration, dump-integrity mechanism and parameter page

**Analysis date:** 2026-10-16. **Scope:** read-only static analysis of the three user-supplied factory dumps. No firmware was flashed, no hardware was energized, and nothing on `servo/r0-baseline` is changed. Reconstructed names are not factory symbols. Every code address below is a **factory B (slave)** address unless stated otherwise; none refers to the independently compiled Gen2.1.20 reference ELF.

## 1. Inputs

| Specimen | File | SHA-256 prefix | Board |
|---|---|---|---|
| A | `oriFW(1).bin` / `oriFWA.bin` | `c0d45253cc601ba1` | master |
| A2 | `oriFW2.bin` / `oriFWA2.bin` | `7f311f8b87aa3f1d` | master (second read) |
| B | `oriFWB.bin` | `f13fad73f874c3e7` | slave (slightly different hardware) |

All three match the hashes recorded in Phases 1–2. The binaries are not committed (see Phase 1). Method: each image was wrapped in an ELF at `0x08000000` with `clang --target=thumbv7m-none-eabi` plus `ld.lld`, then disassembled with `llvm-objdump` 18. `analyze_phase6.py` (alongside this report) reproduces every value cited here without a disassembler: it reads tables and literals, and compares exact Thumb halfwords at fixed addresses. It ends with `RESULT: all checks passed` on the three images above.

**Everything here is B/slave evidence.** Nothing was verified on the master board's behaviour; see §6 for what is and is not known about the master.

## 2. Phase 2–5 claims re-checked against B

| Claim (phase) | Result |
|---|---|
| ADC IRQ `0x08000A58` reads data regs → `0x20000264/266`, calls `0x08002808`, filters `0x080016CC/0x08001684`, state byte `0x20000260`, calls `0x0800252C` in state 3, 2→3 advance, POEN-off helper in state 4 (P3/P4) | Confirmed |
| Clarke `0x08001D28`: `K·(s0+2·s1)`, `K=0x49E6`, negate, `>>15` round-to-zero, clamp, `0x8001` end-case (P5) | Confirmed |
| PI `0x080037E8` structure and initial values P=100/1024, I=50/8192, ±32767, integrator ±268,427,264 (P5) | Confirmed (initialiser `0x0800378C`; limit literal `0xF0002000` = −268,427,264, negated for the upper bound) |
| Thermistor `0x08001708`: `10000·x/(32768−x)`, R<8000 → counter 3000 → flag at count>2900; R<6000 → 2000 / >1900 (P3) | Confirmed |
| Magnitude limiter `0x080047F8`: x²+y² vs `0x3D759621` (=32111²), table-indexed rescale (P5) | Confirmed |
| State dispatch `0x08003414`, table bytes `03 11 16 19 23`, flag addresses (P5) | Confirmed (literals `0x20000260/296/269/23A/2B0`) |
| Supervisor decrement 10 / +200, flags `0x20000069/6A/6B` (P4/P5) | Confirmed |
| SysTick reload `SystemCoreClock/250−1`; registrations (0,1), (100,1), (100,25) (P5) | Reload and the (100,1), (100,25) registrations confirmed; the first (0,1) registration was not re-read |
| TIMER0: period 2250, CH3 compare 2249, center-aligned `0x20`, prescaler 0 (P4) | Confirmed; details in §5 |

**Not re-checked:** SVPWM constants in `0x08004AC0`, the 16-sample zero-offset calibration and its 30,001–34,499 window, the ADC trigger-select writes (`ETSIC`), the UART frame layout, the IMU path and LED logic. The 72 MHz timer clock and the resulting 16 kHz carrier remain assumptions.

## 3. Correction: the stock inner loop is not a dual current PI

Phase 5 (current-loop report §3) calls `0x0800252C` "strong evidence of closed-loop vector current regulation". Read literally, the function is:

```text
shunts = read_shunts()                       // 0x08004D4C  -> 0x2000024C
ab     = clarke(shunts)                      // 0x08001D28  -> 0x20000250   (alpha = s0)
a      = [0x20000268 + 0x2C]                 // hall angle, Q16 (see section 4)
(x,y)  = rotate(ab, +a)                      // 0x08004274  -> 0x20000254
P      = |x * V0_prev / 10000 * 94|          // 0x08006424 is abs()   -> 0x20000248
V1     = PI(setpoint 0, feedback y, 0x200004F0)    // 0x080037E8 -> 0x2000025A
V0     = demand_limiter(demand@0x2000023E, P)      // 0x08003560 -> 0x20000258
(V0,V1)= circle_limit(V0,V1)                 // 0x080047F8
ab_v   = rotate((V0,V1), -a)                 // 0x08004858  -> 0x2000025C
svpwm(ab_v)                                  // 0x08004AC0 (tail call)
```

- **One PI only**, on the second rotated component, regulated to zero.
- **`0x08003560` is not a regulator.** If `P/1000` is not above `[0x2000008E]`, it returns `demand + [0x200000AA]` and resets its counter (`0x2000023C`) to 32. If it is above, the counter climbs by 1 per call to 250 and the demand is pulled toward zero by that counter (demand above the counter: demand − counter; positive but not above it: demand − 32; zero or negative but above −counter: demand + 32; at or below −counter: demand + counter). For demand 0 in overload the code returns +32; the practical effect depends on `[0x200000AA]` and was not traced.
- So this layer is **voltage-mode on the demand axis with a power-style overload ramp-down**. A true current loop, if any, is upstream of `[0x2000023E]`.
- `sincos` `0x08005C00` returns (cos a, sin a) for a Q16 angle, from a 256-entry quarter-wave table (index `T[255−i]` for the complement, i.e. a one-step approximation). The forward rotation is therefore by **+a**, applied to a Clarke pair whose β is negated. Axis 0 is functionally the demand/torque axis and axis 1 the zero-regulated axis; physical d/q naming still depends on shunt sign and angle offset and remains unresolved.

## 4. New: rotor-angle generation from the Hall inputs

Source: `0x08002808` (called unconditionally from the ADC IRQ) and the sampler `0x08006A3C`. Working struct at `0x20000268`.

**Hall state** = `PC13 | PA1<<1 | PC14<<2`, each bit with a hold-off debounce: after a change, further changes are ignored while a per-bit counter (reload `[+0x0C]`) is nonzero. States 0 and 7 are invalid.

**State → sector-centre angle** (Q16, from the jump table at `0x08002820`):

| Hall state | 6 | 4 | 5 | 1 | 3 | 2 |
|---|---|---|---|---|---|---|
| Angle (hex) | `0x1556` | `0x4000` | `0x6AAA` | `0x9554` | `0xBFFF` | `0xEAAB` |
| Degrees | 30 | 90 | 150 | 210 | 270 | 330 |

The positive-direction sequence is **6→4→5→1→3→2** (the transition guards at `0x080028A2–0x0800294E` increment the sector counter and store direction +1 for those steps, −1 for reverse steps).

**Angle = centre + offset + interpolation:**
1. Offset: when the per-tick step is above +2, offset = −5461 (−30°); below −2, offset = +5461 (+30°); otherwise unchanged. Set to 0 after the timeout below. At a sector entry the angle therefore starts at the sector's leading edge.
2. Step per tick = `direction · 10922 / filtered_period` (10922 = 65536/6), where `filtered_period = (85·latest + 15·previous)/100`, in units of calls of the ADC handler.
3. The interpolation accumulator adds the step each call and stops once its magnitude reaches 10922 (60°).
4. If no Hall edge arrives within **200 calls** (`cmp r0,#0xC8`), offset and step are cleared and interpolation stops (valid flag `[+0x0A]` = 0).
5. The result is written to `[0x20000268 + 0x2C]` and read by `0x0800276C`.

Other struct fields identified (all B): `+0x00` direction (±1), `+0x01` Hall-fault flag (set when the invalid-state count `[+0x14]` exceeds 64; not cleared in this routine), `+0x02` raw state, `+0x06` previous state, `+0x07/08/09` debounced PC13/PA1/PC14, `+0x16/1C/1E` sector count and a 3,201-call window, `+0x18` signed speed `dir·46081/period` (unit unresolved), `+0x20/22/24/26` periods and the filtered period.

**Open:** the ADC-handler call rate that sets the "tick" is unmeasured. With a TIMER0 repetition counter of 1 and an injected group triggered from CH3 it is plausibly one call per PWM period (16 kHz), but this is not established. The 200-call timeout is then about 12.5 ms.

## 5. New: TIMER0 bridge configuration (init at `0x08004DB0`)

| Item | Value | Evidence |
|---|---|---|
| Prescaler / counter mode | 0 / center-aligned mode `0x20` | `0x08004E5E–62` |
| Period (ARR) | 2250 | `movw 0x8CA` at `0x08004E68` |
| Clock-division field | `0x100` (tDTS = 2 × timer clock) | `r6=2`, `lsls r0,r6,#7` |
| Repetition counter | 1 | `strb r5,[sp,#0x3A]` |
| CH0–2 | PWM mode `0x60`, initial compare 1125, output + complementary output enabled | `0x08004E88–E9A` |
| CH3 | PWM mode 2 (`0x70`), compare 2249 | `0x08004ED0–EDE` |
| Output-compare preload | four helper calls with argument 8. Bodies of `0x080057BC` (CCMR1 bit 3, CH0) and `0x08005848` (CCMR1 bit 11, CH1) were read and set the OC preload bits; `0x080058D8` and `0x08005940` (presumably CH2/CH3 in CCMR2) were not read | `0x08004EFC–F18` |
| Output pins | `GPIOA` pins 8–10 and `GPIOB` pins 13–15 (`0x48000000` / `0x48000400`), alternate-function mode, speed 3, alternate function 2 (TIMER0 CH0–2 and CH0N–2N on this part) | `0x08004DCA–E52` |
| Channel polarity / idle | CHx polarity field 0; **CHxN polarity field `0x8` (SPL "OCN polarity low", CCxNP set)**; both idle-state fields 0. Field positions confirmed by the masks in `0x08005740` (`bic #8` then OR of `[+0xE]`; CTL1 bits `0x100/0x200` cleared and ORed with `[+0x10]/[+0x12]`) | `0x08004E88–EAE`, `0x08005740–AA` |
| TRGO | `0x08005968` sets CTL1 bits 6:4 to `0x20` (update event as master trigger) | `0x08004F4A` |
| BDTR value | `0x0C1C` = OSSR `0x800` \| OSSI `0x400` \| dead-time field `0x1C`; lock 0, **break disabled (BRKEN=0)**, break polarity 0, automatic output enable off | struct at `0x08004F22–3E`, applied by `0x08005524` (`strh [TIM0+0x44]`) |
| POEN | set/cleared only by `0x080055E0` (bit 15) | helper body |

Confirmed in this pass: `r6=2`, `r7=0x800`, so the BDTR struct is `0x800 | 0x400 | 0 | 0x1C | 0 | 0 | 0` and `0x08005524` simply ORs the seven fields and stores to `[TIM0+0x44]`. Derived: with a 72 MHz timer clock, dead-time ≈ 28 × (2/72 MHz) ≈ **0.78 µs**. The structure layouts follow the standard SPL conventions. The CHxN polarity value is decoded; what it means at the pin (whether high- and low-side gate signals are in or out of phase before dead-time, and what the gate drivers expect) depends on the GD32 timer's polarity logic and on the board's driver stage, so **it is a bench item: scope the six gate signals with the output stage unpowered before any stock-equivalent code is run**. The 72 MHz timer clock itself is inferred (ARR 2250 centre-aligned gives 16 kHz at 72 MHz) and is not independently read from the RCU setup. No other write to the BDTR register was found, but nine other `#0x44` stores in the image (e.g. `0x080012B4`, `0x08003CBC`, `0x0800405E`) were not individually traced to their bases; most sit in code far from any TIMER0 literal and are probably RAM-structure fields. **Hardware break is not used by the stock firmware** as far as this pass shows; protection is software (state machine, demand limiter, ADC-side logic).

## 6. A and A2: the dump damage is a block-read artifact, and master code equals slave code

Word-level alignment against B (first 32 KiB):

| | Insert (word missing from dump) | Delete (extra words) | Replace |
|---|---|---|---|
| A | 78 | 26 | 2 |
| A2 | 55 | 23 | 3 |

- **All 26 (A) and all 23 (A2) extra-data runs start or end on a `0x400` boundary**, the GD32F130's flash page size. Of those, 19 (A) and 17 (A2) are exact duplicates of the adjacent words.
- The same lost-word and duplicated-word pattern lands inside the CRC tables and the sine table, which are mathematically fixed. This is why the Phase 2 CRC check gave `0xE415`/`0x8922` on A/A2.
- **Repair test** (restore B's bytes where a dump lacks words, drop duplicated words, keep the dump's own bytes elsewhere): both repaired images give CRC-16/MODBUS("123456789") = `0x4B37` from their own tables, match B's CRC and sine tables byte for byte, and every vector lands on a valid `push` prologue.
- **Residual real differences** after repair:

| Image | Location (B coordinates) | Nature |
|---|---|---|
| A2 | `0x0FCF` | single flipped bit: `mov r5,r0` (`0x4605`) reads as `0xC605`. A has the correct bytes, so this is a read error in A2. |
| A | ≈`0x588C–0x5893` | two words damaged (`04 ea 10 27 · b8 90` where B/A2 have `04 ea 02 22 · 32 43 10 4e · b0 42`); a `cmp r0,r6` is destroyed. Not explained by slips. |
| A, A2 | `0x7C00–0x7C13` | the parameter page (§7) |
| A2 | `0x7FF8–0x7FFF` | 8 stray bytes (`04 b0 08 2e 31 d0 09 2e`) beyond the true end of the image |

Consequences:
- The Phase 1–2 reading that the EXTI and USART handler windows "differ" as board-role logic is explained by dump slips shifting code in A; it should be withdrawn.
- The stock **master and slave run the same code** wherever the dumps can be compared, and differ in the parameter page. Hardware differences must therefore be handled by that page and by runtime flags (see §7), not by separate code.
- **Limit:** the repair copies B's bytes into A/A2's gaps, so it shows that the dumps agree with B wherever they have data; it does not recover a verified master image. Do not flash a repaired file. Re-reading over SWD at least three times, with a per-page hash on each pass, remains the recommended confirmation.

## 7. New: the `0x08007C00` page is a runtime parameter store

Phase 1 left the end-of-image bytes unresolved. Four code sites reference `0x08007C00` (`0x08002648`, `0x080026B4`, `0x08005358`, `0x080053D4`):

- `0x0800530C` loads 10 halfwords from `0x08007C00` (reader `0x08002650`) and scatters them into RAM.
- `0x08005370` gathers the same fields, erases the page, and programs 10 halfwords (writer `0x08002674`; FMC unlock `0x080024D8`, program via `FMC_CTL` PG at `0x080024BA`, lock `0x08002494`).
- Slots 8 and 9 are saved and restored **only if the byte at `0x2000021E` is nonzero**. When it is zero, the stack slots that would carry them are never filled.

| Slot | RAM destination | B (slave) | A2 (master) |
|---|---|---:|---:|
| 0 | `0x20000210` | 102 | 46 |
| 1 | `0x20000212` | −60 | −141 |
| 2 | `0x20000214` | 8131 | 46 |
| 3 | `0x20000216` | 11 | −141 |
| 4 | `0x20000218` | 2 | 8400 |
| 5 | `0x2000021A` | −42 | −1 |
| 6 | `0x2000019A` | −71 | −24 |
| 7 | `0x2000019C` | −38 | −75 |
| 8 | `0x2000008A` | 1024 | −34 |
| 9 | `0x2000008C` | 18432 | −99 |

B's slots 8–9 (`0x0400`, `0x4800`) together form `0x48000400`, the GPIOB base address, which looks like uninitialised stack contents written to flash. That is consistent with `0x2000021E` being clear on the slave and set on the master; it is not proven. `0x2000021E` has 18 literal references in B and also gates a battery-voltage filter (see §8). Its writer was not traced. The RAM addresses of slots 0, 3, 6, 7, 8 and 9 also appear together in a literal pool at `0x08006DF4–0x08006E20`, just before the CRC routine at `0x08006E38`, which suggests the communications code reads or writes them (so some may be host-settable); the owning function was not read, and the semantics of every slot are **unresolved**.

**Update (owner of the slots found).** The literal pool at `0x08006DF4–0x08006E34` belongs to the main loop (`0x08006C5A–0x08006D94`), which polls flag bytes and acts on them:

- One command flag copies three halfwords from `0x200001F8` to `0x20000210` (slots 0–2) and three from `0x200001FE` to `0x20000216` (slots 3–5). It then reads floats at `0x200001CC` and `0x200001C4`, divides each by `100.0` (`0x42C80000`), converts to integer into `0x2000019A` / `0x2000019C` (slots 6 and 7), and calls the flash writer `0x08005370`. Those source buffers are not written by anything in the main loop, which fits a host or communications-handler origin (not traced).
- Two further flag bytes (`0x20000149`, `0x2000014A`) toggle slots 8 and 9 between zero and a nonzero constant, save, and clear the flag.
- Slot 9 (`0x2000008C`), when `0x2000021E` is clear, selects the polarity of two `GPIOB` output bits (pins 1 and 2) via the pair of pin set/reset helpers at `0x08002762` / `0x08002766`.

So the page is **host-settable configuration saved on command**, not factory calibration written at manufacture, and slots 8 and 9 behave as flags (nonzero = on). The slave's stack-garbage values for them (`0x0400`, `0x4800`) are therefore harmless in the sense that both are simply nonzero. Which physical quantities slots 0–7 represent is still not named.

Practical consequence for ServoFOC: this page is per-board persistent data in the last KiB of the used flash. Back it up per board before programming over the stock firmware, and do not let an R-series image occupy `0x7C00–0x7FFF` until its meaning is known.

## 8. Additions to Phase 3 (PA4 / battery path)

`0x08001708` also contains a soft-float block, run only when `[0x2000021E] != 0`: `x' = PA4_filtered·10230 >> 15 + 63` (stored at `0x20000082`), then `y = 0.9999·y + 0.0001·x'` (double constants `0x3FEFFF2E48E8A71E` and `0x3F1A36E2EB1C432D`; state at `0x200000CC`), output `int(y) + 150` at `0x20000084`. At the 250 Hz scheduler rate the time constant is about 40 s. The physical meaning of the scale factors is unresolved.

## 9. Evidence grading

| Finding | Confidence | Basis |
|---|---|---|
| §2 re-verified items | High | Exact instruction encodings and literals in B |
| Stock loop is one PI + voltage-mode demand limiter | High for `0x252C` as written; upstream current control not excluded | Call chain, argument registers, `0x08003560` body |
| Hall → angle table, direction sequence, interpolation | High | Jump table, immediates, literal `0xFFFFEAAB` |
| ADC-handler call rate, ms-scale timings | **Unresolved** | Not measured |
| TIMER0 dead-time, break disabled, RCR 1 | High for values written at init; moderate for physical dead-time (72 MHz assumed) | Init structs and BDTR helper |
| A/A2 damage is a 1 KiB-boundary block-read artifact | High (pattern), moderate (cause of read tool) | 49/49 extra-data runs on `0x400` boundaries; table repair |
| Master code = slave code | High where comparable; A's second damage site and master-only behaviour untested | Repair test, residual list |
| Parameter page semantics | Structure high; slot meanings **unresolved** | Loader/writer code |
| `0x2000021E` distinguishes master/slave | **Hypothesis** | Gating of slots 8–9, stack-leak signature in B |

## 10. Next targets

1. Trace the writers of `0x2000021E`, `0x2000008E`, `0x200000AA`, `0x2000023E`, and the code owning the literal pool at `0x08006DF4–0x08006E20`, to name the ten saved parameters.
2. Measure or derive the ADC-handler rate (full `ETSIC`/`ETEIC` path), which fixes every "tick" in §4 and §3.
3. Re-read the master board over SWD three or more times with per-page hashes; recheck A's `0x588C` damage and A2's bit error.
4. Decode `0x08004AC0` and `0x08004D4C` again against the same ELF wrapper. (Output-compare init bodies `0x08005740`, `0x080057C8`, `0x0800585C`, `0x080058E4` are now read; remaining: `0x080058D8` and `0x08005940`.)
5. Resolve PA0/PB0 phase naming and axis polarity, using the angle table above together with a bench measurement.

**Boundary:** static decoding only. No R0.1, R1 or RoboDurden repository change is made or implied, and no stock flash is touched.
