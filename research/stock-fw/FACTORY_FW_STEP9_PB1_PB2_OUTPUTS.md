# Gyroor G5 factory firmware — Phase 9: what the stock firmware does with PB1 (and PB2)

**Analysis date:** 2026-10-19. **Scope:** read-only static analysis of the factory images. No firmware was flashed and no hardware was energized. Reconstructed names are not factory symbols. All addresses are **factory B (slave)** addresses; the master image has identical code (§6).

**Why this phase exists.** PB1 has two conflicting identities in the material around this project. The upstream `defines_2-1-20.h`, hoverboardhavoc's F130 slave configuration and the old upstream PR #23 all use PB1 as the **second phase-current input**. Phase 6 instead found the G5 stock firmware **driving** PB1 and PB2 as outputs. A pin that one firmware drives and another reads as a current shunt is a possible hardware-damaging fault, so this phase pins down exactly what stock does with it.

## 1. Answer

1. **On the G5, PB1 is only ever a digital push-pull output.** It is configured once, at start-up, together with PB2–PB5. It is never set to analog, input or alternate function, and it is never sampled by the ADC. The G5's two current shunts are PA0 and PB0 (Phase 3); PB1 has no current-sensing role.
2. **PB1 and PB2 are written in exactly three places:** start-up GPIO init (both high), an indicator/fault flash (both switched together), and a main-loop block that drives them to **opposite** levels, selected by parameter slot 9.
3. **The opposite-level block only runs when the power button was not seen at boot.** The flag `0x2000021E` is set when PA12 (the button input) reads high at power-on. That gives Phase 6's "master versus slave" hypothesis a concrete mechanism: it is "started by the button" versus "started any other way".
4. **The stock firmware itself puts PB1/PB2 in every combination.** Both high (every boot, about 0.1 s, and permanently on a button-started board), both low (indicator flash), and opposite (main loop). So whatever PB1/PB2 drive survives every combination on stock hardware. A load where one combination is destructive (for example the two inputs of a discrete bridge that shoots through when both are high) is **not consistent** with stock behaviour.
5. **The real fatal risk is in other firmware, not in PB1 itself** (§8): reading PB1 as a phase current on a G5 leaves over-current protection blind, and leaving PB1 floating puts an unknown load in an undefined state. The same check on the wider pin map found a more serious issue: a `LAYOUT 1` build of ServoFOC would drive several G5 sense and hall pins as outputs (§9).

## 2. Inputs and method

| Image | File | SHA-256 |
|---|---|---|
| B (slave) | `firmware/original/oriFWB.bin` | `f13fad73…0272b6` |
| Master (reconstruction) | `firmware/reconstructed/master_reconstructed.bin` | `6b800aa6…7559b6` |

Each image's code half was wrapped in an ELF and disassembled with `llvm-objdump` 18 (`disasm-stock-bin.sh`). Arguments at every call to the GPIO helpers were traced by hand and with a register-tracking script. [`analyze_phase9.py`](analyze_phase9.py) reproduces every claim without a disassembler (`python3 -I analyze_phase9.py <oriFWB.bin> <master_reconstructed.bin>`): exact instruction encodings, literal-pool words, and a full decode of every Thumb-2 `BL` / `B.W` in the code half, so a helper caller missed here would show up as unexpected. It ends with `RESULT: all checks passed` on the two images above. As a negative test, feeding it the damaged master read `oriFWA.bin` in place of B fails 38 checks.

## 3. The GPIO helpers

| Address | Reconstructed role | Evidence |
|---|---|---|
| `0x080026BC` | `gpio_init(port, {u32 pins; u8 mode, speed, otype, pupd})`: per selected pin writes `CTL` (mode, struct +4), `OSPD` (+5), `OMODE` (+6, output modes only) and `PUD` (+7) | `ldrb [r1,#4/#5/#6/#7]`, stores to `[r0]`, `[r0,#8]`, `[r0,#4]`, `[r0,#0xC]` |
| `0x08002734` | `gpio_af(port, pin, af)`: writes `AFSEL` | `[r0,#0x20]`, nibble mask `0xF` |
| `0x08002762` | drive pins **low**: `str r1,[r0,#0x28]` (`GPIOx_BC`) | single instruction |
| `0x08002766` | drive pins **high**: `str r1,[r0,#0x18]` (`GPIOx_BOP`) | single instruction |

There are 21 `gpio_init` calls, 8 `gpio_af` calls and 98 calls to the two pin helpers. **Nothing writes a GPIOB register directly.** Every GPIOB base load in the image is followed only by helper calls.

## 4. How PB1 is configured

| Site | Port, pins | Mode | Notes |
|---|---|---|---|
| `0x08003370` (in board GPIO init `0x08003320`, called from start-up at `0x08006B00`) | GPIOB, `0x3E` = **PB1–PB5** | 1 (output), speed 3, push-pull | The pull byte (+7) is **never written**, so PB1–PB5 get a pull setting from leftover stack data. Harmless for push-pull outputs, but not deterministic. |

No other configuration touches PB1:
- **Analog (ADC) pins** (`0x080049F4–0x08004A32`): PA0, **PB0** (GPIOB mask `0x1`), PA6, PA4. Not PB1.
- **Alternate function:** only PA8–PA10 and PB13–PB15 (AF2, TIMER0 bridge) and PA2–PA3 (AF1, USART).
- **Inputs:** PC13, PA1, PC14 (halls, pull-up), PA12 (button, pull-down), PA5, PA11, PC15, PF1.

## 5. Every write to PB1 and PB2

| Site | Function | PB1 | PB2 | When |
|---|---|---|---|---|
| `0x08003378` | board GPIO init `0x08003320` | high | high | Once at start-up, with PB3–PB5 also high |
| `0x080019B2` / `0x080019BE` | indicator flash `0x08001920` | high | high | One step in six while flashing (with PB3–PB5, PA7, PA15) |
| `0x08001972` / `0x0800197E` | indicator flash `0x08001920` | low | low | The other five steps while flashing |
| `0x08006D42` / `0x08006D4A` | main loop | **low** | **high** | Every pass, if `0x2000021E == 0` and slot 9 (`0x2000008C`) ≠ 0 |
| `0x08006D56` / `0x08006D5E` | main loop | **high** | **low** | Every pass, if `0x2000021E == 0` and slot 9 == 0 |

**The indicator flash.** `0x08001920` runs from the indicator task `0x08001A84`, which is registered unconditionally at `0x08006BD8` (initial delay 50 ticks, period 1 tick, so 250 Hz on the 4 ms scheduler, Phase 5). The task tail-calls the flash at `0x08001B50` when any of these holds: byte `0x20000000` ≠ 0; the PA6 resistance estimate `0x20000114` < 8,000 Ω (Phase 3's overtemperature threshold); or halfword `0x2000003C` (`[0x20000038 + 4]`) = 0. A divider limits it to every sixth task call, and the flash's own 0–5 counter (`0x2000003B`) lights everything on one step of six.

**The main-loop block** (`0x08006D30–0x08006D5E`) sits after the parameter-page command handlers and runs on **every** main-loop pass, not only when a command arrives. Each pass re-asserts the two levels.

**Edge order.** With slot 9 ≠ 0 the code clears PB1 before setting PB2 (both briefly low). With slot 9 = 0 it sets PB1 before clearing PB2 (both briefly high, a few CPU cycles, only when the state actually changes).

## 6. Master and slave

**The flag `0x2000021E` is decided once at boot** (`0x08006B32–0x08006B70`): the firmware reads PA12 (GPIOA input bit 12, via `lsls #19`) 100 times with a delay between samples. If more than two reads are high, `0x2000021E = 1`, otherwise 0. PA12 is configured as an input with pull-down (`0x08004FF0`, pupd 2) and is the board's button (`BUTTON PA12` in `defines_2-1-20.h`). So:

- **Started by a held power button** (normally the master): `0x2000021E = 1`. The main-loop block is skipped, and PB1/PB2 stay at their start-up level (both high) except while the indicator flash runs.
- **Started any other way** (normally the slave, which has no button; or a master powered without the button): `0x2000021E = 0`. The main loop drives PB1/PB2 to opposite levels.

**The code is the same on both boards.** The master reconstruction differs from B only in the parameter page `0x08007C00–0x08007C13`, and its pin-helper call table is identical.

**Slot 9 is non-zero on both boards** (B `0x4800`, master `0xFFFF`; Phase 6 §7). So on any board that runs the main-loop block, the steady state is **PB1 low, PB2 high**. Slot 9 is toggled by command flag `0x2000014A` and saved to flash (Phase 6), so a host can swap the two levels.

**Resulting behaviour:**

| Situation | PB1 | PB2 | Duration |
|---|---|---|---|
| Boot, from GPIO init to the main loop | high | high | Roughly 100–170 ms (estimated from the delay-loop counts; not measured). The power latch PB12 is set inside this window. |
| Button-started board, normal running | high | high | Permanent |
| Button-started board, indicator flash | both high 1 step in 6, otherwise both low | | While the fault/overtemperature condition holds |
| Other boards, normal running | low | high | Permanent (slot 9 ≠ 0) |
| Other boards, indicator flash | brief both-high / both-low pulses, overwritten by the next main-loop pass | | While the condition holds |

## 7. What this says about the hardware

- **PB1/PB2 belong to the indicator group.** They are configured with PB3–PB5, flashed with the battery LEDs (PB3, PB4, PA15), PB5 and PA7, and PB2 is `UPPER_LED` in `defines_2-1-20.h`. On a button-started board they behave like LED lines.
- **On the other board they behave like a two-state selector.** They are driven to opposite levels, re-asserted continuously, with the choice saved to flash and settable by the host. That fits a two-colour light, a lamp pair, or a polarity select. This is a hypothesis: the PCB trace has not been followed.
- **No stock combination is destructive.** Both high is the steady state on a button-started board and occurs on every boot of every board. Both low and opposite levels also occur. A load that one of these combinations damages is not consistent with boards that survive normal use. **Caveat:** Phase 6 notes the slave hardware differs slightly from the master. On a non-button-started board, both high lasts only for the boot window and brief flash pulses, so the evidence for that board is weaker.

## 8. Where the fatal risk actually is

1. **Reading PB1 as a phase current on a G5 (highest severity).** The upstream `defines_2-1-20.h` (`PB0/PB1`), hoverboardhavoc's F130 slave configuration (`PB0/PB1`) and the history behind upstream PR #23 all do this. On a G5, PB1 is not connected to a shunt amplifier as far as stock behaviour shows. A current loop and over-current trip reading PB1 would see a constant or meaningless level, so the bridge could be commanded into large currents with protection blind. **ServoFOC's layout 20 already uses PA0/PB0. Keep it that way and add a compile-time guard** (for example `#if` on `PHASE_A`/`PHASE_B` equal to `PB1` → `#error` in the G5 servo configuration).
2. **Leaving PB1 floating.** ServoFOC drives PB2 (`UPPER_LED`) but never configures PB1, so PB1 stays a floating input after reset. Whatever it drives (a transistor or MOSFET gate, for instance) is then in an undefined state. **Until the trace is followed, drive PB1/PB2 push-pull to stock's steady state** for each board: PB1 low / PB2 high on the slave, both high on a button-started master.
3. **Routing PB1 to an alternate function.** On the GD32F130, PB1's AF2 should be `TIMER0_CH2_ON` (a complementary low-side output); **verify this against the datasheet's alternate-function table**. Stock never selects an alternate function for PB1. Nothing in ServoFOC should either.

## 9. Same check on the wider pin map: `LAYOUT 1` on a G5

While checking how ServoFOC treats PB1, the build configuration on `servo/r0-baseline` turned out to matter more than PB1 itself.

- **The servo builds are correct.** The PlatformIO environments `servo_G5_master` / `servo_G5_slave` and the CMSIS `csolution` targets define `APPLICATION_SERVO`. `configSelect.h` then includes `configServo.h`, which sets `LAYOUT 20`.
- **Two other build paths in the same branch use `LAYOUT 1`.** The PlatformIO environment `genericGD32F130C8` and the Keil project's GD32F130 target define only `GD32F130 TARGET=1`, so `configSelect.h` falls through to `config.h`, which sets `LAYOUT 1` and selects **`defines_2-1-1.h`**. Also, `platformio.ini` has no `default_envs`, so a bare `pio run` builds every environment, and a bare upload may try to flash each one in turn. Confirm this against PlatformIO's documentation before relying on it.

What `defines_2-1-1.h` would do on a G5, checked against what stock does with each pin:

| `defines_2-1-1.h` | Stock G5 role of that pin (this report / Phase 3/6) | Effect on a G5 |
|---|---|---|
| `LOWER_LED PA0` (output) | Phase-current amplifier output, ADC rank 1 | **Push-pull output fighting the op-amp output**; current reading lost |
| `UPPER_LED PA1` (output) | Hall input (pull-up) | Output driving a hall line; hall signal lost |
| `MOSFET_OUT PC13` (output) | Hall input (pull-up) | Output driving a hall line; hall signal lost |
| `HALL_A/B/C PB11/PF1/PC14` | Halls are PC13/PA1/PC14 | Wrong rotor position: commutation from two wrong inputs |
| `CURRENT_DC PA6` | Thermistor (10 kΩ divider) | DC-current protection reads a temperature sensor |
| `TIMER_BLDC_EMERGENCY_SHUTDOWN PB12` | Power latch output, held high (`0x08004126–0x0800414C`) | Latch pin used as an input: board may switch itself off, or the break input is never asserted |
| `LED_ORANGE PA12` (output) | Button input, pull-down | Output driving the button line |
| `SELF_HOLD PB2` | Indicator output | The real latch (PB12) is never driven |

Wrong hall inputs plus a blind current measurement is the classic way to burn bridge FETs. **Make it impossible to build or flash a non-layout-20 image for a G5**, for example:
- Set `default_envs` to the two servo environments.
- Add `#error` guards in `config.h` (or `configSelect.h`) when a G5 build lacks `APPLICATION_SERVO`.
- Remove or relabel the Keil GD32F130 target.

Whether `servo/r0-baseline` has already been built this way for a board is not known from the repository.

## 10. Bench checks

With stock firmware, current-limited supply, no motor:
1. Trace PB1 (LQFP48 pin 19, per the GD32F130 pinout; verify) and PB2 on **both** boards to their loads.
2. Slave: expect PB1 ≈ 0 V, PB2 ≈ 3.3 V while running. Master started with the button: expect both ≈ 3.3 V.
3. Toggle the slot-9 command (flag `0x2000014A`, Phase 6) on the slave and confirm the two levels swap.
4. Before flashing any ServoFOC image, check the build's layout (for example, the compiled `LAYOUT` value or the hall pins in the map file).

## 11. Evidence grading

| Finding | Confidence | Basis |
|---|---|---|
| PB1 only ever push-pull output; never analog/AF/input | High | All 21 `gpio_init` and 8 `gpio_af` sites decoded; full `BL`/`B.W` scan |
| The three PB1/PB2 write sites and their conditions | High | Exact encodings, literals, 98-site helper scan |
| `0x2000021E` = PA12 high at boot | High | Boot loop encodings; PA12 configured as pull-down input |
| PA12 is the power button / normally the master | Moderate | `defines_2-1-20.h` naming; stock latch/button handling; not bench-tested |
| Slot 9 non-zero on both boards → PB1 low / PB2 high | High for the images; the live boards' pages could since have been changed by a host | Parameter pages |
| Boot window ≈ 100–170 ms | Low–moderate | Delay-loop counts at assumed 3–5 cycles/iteration; not measured |
| No stock combination of PB1/PB2 is destructive | Moderate | Stock produces all combinations; slave both-high exposure is short |
| PB1/PB2 drive indicator/light loads | **Hypothesis** | Grouping and patterns only; trace not followed |
| `LAYOUT 1` build collides with G5 pins | High for the pin collisions | Stock pin roles (script checks) vs `defines_2-1-1.h` on `servo/r0-baseline` |

**Boundary:** static decoding only. No stock flash, R-series code or build file was changed by this phase.
