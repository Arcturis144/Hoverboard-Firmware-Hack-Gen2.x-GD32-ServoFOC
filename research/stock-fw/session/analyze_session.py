#!/usr/bin/env python3
"""Which fields of the stock 0x78 UART frames respond to each labelled stimulus?

Reads marks.csv and uart_timed.csv written by session.py, assigns every CRC-valid function-0x78
frame to the label active when it arrived (ignoring --guard seconds after each key press), and
compares the value range of each field under a label with the baseline label ("idle").

  python3 analyze_session.py session-run [--guard 0.3]

Writes uart_stimulus.csv. Field layouts are those in the Phase 7 report; meanings are still unknown.
"""
import argparse
import csv
import os
import struct
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "..", "sniffer-v9"))
import stock_link_parse as slp

# (name, offset, struct format) per frame kind
FIELDS = {
    "cmd78": [("s16@2", 2, ">h"), ("s16@4", 4, ">h"), ("s16@6", 6, ">h"), ("b8", 8, "B"), ("b9", 9, "B"),
              ("u16@10", 10, ">H"), ("b12", 12, "B"), ("b13", 13, "B"), ("b14", 14, "B")],
    "reply78": [("s16@2", 2, ">h"), ("s16@4", 4, ">h"), ("s16@6", 6, ">h"), ("b8", 8, "B"), ("b9", 9, "B"),
                ("u16@10", 10, ">H"), ("b12", 12, "B"), ("b13", 13, "B")],
}


def load_marks(out_dir):
    with open(os.path.join(out_dir, "marks.csv")) as fh:
        return [(float(r["t_s"]), r["key"], r["label"], r["kind"]) for r in csv.DictReader(fh)]


def load_frames(out_dir):
    frames = []
    with open(os.path.join(out_dir, "uart_timed.csv")) as fh:
        for r in csv.DictReader(fh):
            p = slp.parse_line(r["line"])
            if not p:
                continue
            f = slp.decode({"t": p[0], "dir": p[1], "data": p[2]})
            f["pc_t"] = float(r["t_s"])
            if f["crc_ok"] and f["kind"] in FIELDS:
                frames.append(f)
    return frames


def label_at(phases, t, guard):
    """phases: [(t_start, label)] sorted. None if inside the guard window after a change."""
    cur = None
    for ts, label in phases:
        if ts <= t:
            cur = (ts, label)
        else:
            break
    if cur is None or t - cur[0] < guard:
        return None
    return cur[1]


def analyse(marks, frames, guard=0.3, spread=0.2):
    phases = [(t, label) for t, _, label, kind in marks if kind == "phase"]
    if not phases:
        return [], {}
    base = phases[0][1]
    stats = {}   # (kind, field, label) -> list of values
    counts = {}
    for f in frames:
        lab = label_at(phases, f["pc_t"], guard)
        if lab is None:
            continue
        counts[lab] = counts.get(lab, 0) + 1
        for name, off, fmt in FIELDS[f["kind"]]:
            v = struct.unpack_from(fmt if fmt != "B" else "B", f["data"], off)[0]
            stats.setdefault((f["kind"], name, lab), []).append(v)
    rows = []
    for (kind, name, lab), vals in sorted(stats.items()):
        if lab == base:
            continue
        b = stats.get((kind, name, base))
        if not b:
            continue
        bset, vset = set(b), set(vals)
        outside = sum(1 for v in vals if v not in bset) / len(vals)
        out_of_range = sum(1 for v in vals if v < min(b) or v > max(b)) / len(vals)
        if outside >= spread or out_of_range > 0:
            rows.append({"kind": kind, "field": name, "label": lab, "frames": len(vals),
                         "baseline_min": min(b), "baseline_max": max(b), "label_min": min(vals),
                         "label_max": max(vals), "pct_values_not_seen_at_baseline": round(100 * outside, 1)})
    rows.sort(key=lambda r: (r["label"], -r["pct_values_not_seen_at_baseline"]))
    return rows, counts


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("run_dir")
    ap.add_argument("--guard", type=float, default=0.3, help="seconds ignored after each label change")
    a = ap.parse_args(argv)
    if not (os.path.exists(os.path.join(a.run_dir, "marks.csv"))
            and os.path.exists(os.path.join(a.run_dir, "uart_timed.csv"))):
        print("(no UART data to analyse in %s)" % a.run_dir)
        return 0
    rows, counts = analyse(load_marks(a.run_dir), load_frames(a.run_dir), a.guard)
    with open(os.path.join(a.run_dir, "uart_stimulus.csv"), "w", newline="") as fh:
        w = csv.DictWriter(fh, fieldnames=["kind", "field", "label", "frames", "baseline_min", "baseline_max",
                                           "label_min", "label_max", "pct_values_not_seen_at_baseline"])
        w.writeheader()
        w.writerows(rows)
    print("UART 0x78 frames per label:", counts or "none")
    for r in rows[:20]:
        print("  [%s] %s %s: baseline %d..%d, under label %d..%d (%.0f%% of values new)" %
              (r["label"], r["kind"], r["field"], r["baseline_min"], r["baseline_max"], r["label_min"],
               r["label_max"], r["pct_values_not_seen_at_baseline"]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
