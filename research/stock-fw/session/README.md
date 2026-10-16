# Key-driven stimulus sessions (SWD watcher + UART sniffer on one clock)

`session.py` lets one key press tell **both** watchers what you are doing, so the data can be split
into "baseline" and "while I did X".

```sh
pip install pyocd pyserial            # pynput too if you want keys to work without terminal focus
python3 session.py --out-dir tilt1 --uart-port COM5 --pc-sample \
    --peripheral 0x48000010:4 --peripheral 0x48000410:4 --peripheral 0x48000810:4
```

| Key | Effect |
|---|---|
| `1`-`9` | start the labelled phase (defaults: tilt forward, tilt back, roll left, roll right, left pad pressed, right pad pressed, both pads pressed, wheel turned by hand, throttle input); change with `--keys "1=...,2=..."` |
| `0` | back to the baseline label `idle` (the run starts in it: hold still first) |
| `m` | point marker for an instant (for example "clicked the pad once"); recorded, does not change the label |
| `q` | finish and write results |

A press is a single key, no Enter. The terminal window must have focus unless you pass `--global-keys`
(uses pynput; untested here; the OS may ask for input-monitoring permission). A USB foot-switch or macro
pad that types a key works with either mode and keeps your hands free for the boards.

## What you get in the run folder

| File | From | Meaning |
|---|---|---|
| `marks.csv` | session | every key press with the PC clock |
| `stimulus.csv`, `phases.csv`, `activity.csv`, `changes.jsonl`, `pc_hist.csv` | SWD watcher | RAM/GPIO bytes that move under each label (see `../swd-watch/README.md`) |
| `uart_timed.csv` | sniffer serial port | every sniffer line with the PC receive time |
| `uart_stimulus.csv` | `analyze_session.py` | which fields of the function-0x78 command/reply change under each label, versus baseline |

`analyze_session.py <run-dir> [--guard 0.3]` can be re-run later, for example with a different guard
that ignores frames just after each key press.

## Limits

- UART lines are stamped when the PC receives them (a few ms of USB/OS delay). Use stimuli that last
  seconds; do not expect millisecond alignment between a key press and a byte change. For exact UART
  timing use the sniffer's own `time_us` column.
- The SWD side is a sampled view (see its README); the UART side sees whole frames.
- Field positions in `uart_stimulus.csv` come from the Phase 7 report; what the fields mean is what
  these sessions should reveal.
- Tested only with scripted key presses, a simulated target, and simulated sniffer lines. Not run with
  pyOCD, an ST-Link, pyserial, or a Blue Pill. `ConsoleKeys` needs a real terminal (not an editor's
  output pane).
