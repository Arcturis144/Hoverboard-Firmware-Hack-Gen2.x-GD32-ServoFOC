# Gyroor G5 Gen2.1.20 + EFeru FOC — Phase 3 (AI-guidelines audited)

Target: **GD32F130C8**, RoboDurden Gen2.x-GD32 **layout 2.1.20**, Gyroor/OLSZ OL20180703-V4.1 family.

This package integrates the EFeru generated FOC controller behind the repository's existing `bldcXY` abstraction and retains `FOC_SAFE_BRINGUP = 1`. It is a source/build/debug migration package; it is not a claim of successful motor operation.

## Important architecture

The repository's high-frequency path remains:

```text
PWM timer -> ADC -> DMA IRQ -> CalculateBLDC() -> bldc_get_pwm()
```

The audited Phase-3 FOC adapter keeps only time-critical controller work plus bounded current/NTC sampling there. Slow capability/debug processing is moved to the normal 5 ms main loop through the optional backend hook:

```text
main loop -> BLDC_SERVICE() -> BldcFocService()
                         |-> DriveCapability_Service()
                         `-> G5Monitor_Service()
```

Existing BC/SINE backends get a no-op `BLDC_SERVICE()`.

## Build-matrix behavior

`config.h` selects FOC only for:

```c
#if defined(GD32F130) && (LAYOUT == 20)
```

Other targets/layouts retain the upstream `BLDC_SINE` default. The vendored EFeru generated `.c` files are also `BLDC_FOC`-guarded because PlatformIO scans `HoverBoardGigaDevice/Src/`.

## Layout-20 ADC mapping

Board-specific facts are kept in `Inc/defines/defines_2-1-20.h`:

```text
PA4 -> VBATT
PB0 -> PHASE_A current
PA0 -> PHASE_B current
PA6 -> MOTOR_NTC (TENTATIVE physical interpretation)
```

PA0, PA6 and PB0 are valid ADC-capable pins on GD32F130. That confirms electrical ADC capability only; it does not prove PA6 is physically the motor thermistor.

The four-channel FOC DMA buffer is ordered to match that scan.

## Current and thermal capability manager

Every FOC operating profile passes through one global capability limit. The fast path accumulates phase-current energy; the main-loop service performs RMS, thermal-state and NTC calculations.

Bring-up defaults remain conservative:

```text
absolute current ceiling: 5.00 A
continuous current model: 3.00 A
Normal profile:           65%
Snow profile:             85%
Boost profile:           100%
```

The PA0/PB0 counts-per-amp value is explicitly provisional until calibrated on hardware.

## Tentative PA6 NTC

The resistance model remains:

```text
Rntc = 10000 * ADC / (4096 - ADC)
```

with provisional factory-derived resistance thresholds:

```text
>= 8.0 kOhm: no NTC derate
8.0 -> 6.0 kOhm: progressive current derate
<= 6.0 kOhm: NTC-derived current limit = 0
```

No Celsius value or thermistor Beta curve is claimed. Until PA6 is physically confirmed:

```c
#define CAP_MOTOR_NTC_REQUIRE_VALID 0
```

## g5mon

`g5Monitor.c` is compiled only when `G5_MONITOR` is selected. Its snapshot is serviced from the main loop. Start by watching:

```text
g5mon.magic
g5mon.update_counter
g5mon.foc.safe_bringup
g5mon.foc.bridge_enabled
```

Expected safe state:

```text
g5mon.magic              0x47354D31
g5mon.update_counter     increasing
g5mon.foc.safe_bringup   1
g5mon.foc.bridge_enabled 0
```

## Safety gate

Do not change:

```c
#define FOC_SAFE_BRINGUP 1
```

until the finished project has passed at least:

1. successful Keil Studio/AC6 compile and link;
2. flash < 64 KiB and RAM < 8 KiB;
3. safe ST-Link attach/flash with phase outputs still forced zero;
4. phase-current offset/scaling/polarity verification;
5. Hall and phase-output mapping verification;
6. PA6 physical-function verification;
7. motor-control ISR timing measurement;
8. current-limited unloaded motor validation plan.

See `AI_GUIDELINES_AUDIT.md` for the repository-guideline audit and the exact items that remain unverified.
