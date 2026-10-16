# SWD watcher (read-only, non-halting)

Purpose: watch the stock firmware's RAM and execution **while it runs on the board**, to confirm the
decoded structure (state machine, Hall angle, thermal flags, parameter slots, link buffers) without
reading code and guessing.

## What SWD can and cannot give you

SWD is a debug link, not a bus you can eavesdrop on: nothing travels on it unless a probe is attached
and asking questions. So the "listener" here is a **probe that polls** the running chip.

| Capability | How | Status |
|---|---|---|
| Which RAM bytes change, how often, to what values | block-read SRAM repeatedly, diff | implemented (`swd_watch.py`) |
| Named variables as a time series | same reads, decoded with `ram_map.json` | implemented |
| Which function the CPU is in (statistical profile) | sample `DWT_PCSR` over SWD | implemented (`--pc-sample`, one DEMCR write) |
| Every individual read/write with the instruction that did it | DWT data watchpoints + ITM/SWO trace, or a halting debugger | **not done**: needs SWO exposed on the header and a trace-capable probe; halting is unsafe with motor outputs live |
| Peripheral registers (TIMER0 compare values, GPIO state) | allow-listed ranges via `--peripheral` | implemented, with a block-list for registers whose *read* has side effects |

Because it samples, anything changing faster than the printed achieved rate is aliased. The
16 kHz PWM compare values and ISR-written scratch variables will look slower than they are; use the
rate printed in the summary to judge each result.

## Safety rules enforced by the tool

- attaches in `attach` mode and never halts, resets, or resumes; refuses if the core is already halted;
- never writes target memory; the only write it can ever issue is `DEMCR.TRCENA` when you pass `--pc-sample`;
- default read window is SRAM only (`0x20000000`, 0xB00 bytes; the stock initial stack pointer is `0x20000A90`);
- peripheral ranges require `--peripheral`, and USART, ADC, FMC, SPI, I2C and DMA ranges are blocked
  unless you pass `--unsafe-peripherals`, because reading their status/data registers clears flags
  the firmware depends on.

Operational: run first with the motor phases disconnected. Do not halt the core from another tool at the
same time; a halted core can leave TIMER0 gate outputs in their last state.

## Usage

```sh
pip install pyocd
python3 swd_watch.py --duration 30 --out-dir run1 --pc-sample \
    --series motor_state_260,hall_angle_294,thermal_flag_69
```

Outputs in `run1/`: `activity.csv` (changed bytes, counts, value range, name), `changes.jsonl`
(every observed change with time), `pc_hist.csv` (profile), `series.csv` (chosen variables).
The console summary shows the achieved sample rate and the 25 most active bytes.

Suggested sessions (each 30-60 s, record what you did): board idle; wheel turned by hand; throttle
or command input changing; a settings change over the UART link; a deliberate thermal-sensor change if
you can do it safely. Then compare `activity.csv` with `ram_map.json`: bytes that move and have no name
are the next decoding targets.

## Stimulus sessions with an ST-Link (tilt, foot pads, optical switches)

Wiring: ST-Link SWDIO, SWCLK and GND to the board's SWD header. Leave 3.3 V and NRST disconnected so the
board stays powered by its own battery supply (only one thing should power the 3.3 V rail). The ST-Link
is a pyOCD-supported probe; on Windows pyOCD may need the WinUSB/libusb driver for it (for example via
Zadig) instead of ST's own driver - not verified here.

Run with labels and the GPIO input registers, which have no read side effects and are not blocked:

```sh
python3 swd_watch.py --duration 0 --annotate --pc-sample --out-dir tilt1 \
    --peripheral 0x48000010:4 --peripheral 0x48000410:4 --peripheral 0x48000810:4
```

Then type a label and press Enter at each change, for example: `idle` (first label is the baseline - hold
still for 10 s), `tilt forward`, `tilt back`, `level`, `left pad pressed`, `left pad released`, `right pad
pressed`, `both released`. Press Ctrl-C to stop. Do each action for several seconds, one at a time.

Results: `stimulus.csv` lists bytes that change at least 5x faster under a label than during `idle`;
GPIO input-register bits flipping under a pad label are the optical switches' pins, and RAM bytes
that follow a tilt are the IMU result or its filtered value. `phases.csv` shows the per-label counts for
every byte that moved at all.

Notes:
- The IMU and pad inputs are probably wired to one board. The RAM names in `ram_map.json` come from the
  slave image, but the master's code matched the slave's (Phase 6), so the same addresses should apply on it.
- Anything that arrives over I2C or SPI shows up here only after the firmware copies it into RAM; the
  peripheral data registers are deliberately not read.
- Keep the wheels off the ground and the motor phases disconnected for the first sessions.

## Files

- `swd_watch.py` - the tool. `PyOcdBackend` is the only hardware-facing class.
- `ram_map.json` - names/widths for RAM decoded in Phases 3-7. Widths marked `assumed` are not confirmed.
- `b_functions.csv` - function starts in the factory B image: Step 5 names, vector entries, and a heuristic
  list of every `push {..., lr}` prologue. Leaf functions without `lr` pushes are attributed to the
  function before them, so profile percentages are approximate.
- `test_swd_watch.py` - runs the tool against a simulated target.

## Status

Tested only against the simulation. pyOCD could not be installed in the environment this was written in, so
the `PyOcdBackend` calls follow pyOCD's documented API but have **not** been run against pyOCD or a probe;
expect to fix small API mismatches on first use. Which probe is available (ST-Link, CMSIS-DAP, J-Link,
Black Magic) decides whether pyOCD or OpenOCD is the better backend.
