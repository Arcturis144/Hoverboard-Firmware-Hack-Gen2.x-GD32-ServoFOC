# Gyroor G5 factory firmware — Phase 8: rebuilding the master image from its two damaged reads

**Date:** 2026-10-17 · **Inputs:** `firmware/original/oriFWA.bin`, `oriFWA2.bin` (master reads), `oriFWB.bin` (slave read, alignment reference) · **Script:** `firmware/build_master_reconstruction.py`

## 1. Result

`firmware/reconstructed/master_reconstructed.bin` (SHA-256 in `master_reconstruction_summary.txt`). Compared with the slave image B it differs only inside the parameter page `0x7C00–0x7C13` (15 of 20 bytes). Everywhere else the master's code matches the slave's wherever either read has data.

| Source of each code-half byte (32 768) | Bytes |
|---|---:|
| both master reads agree | 31 205 |
| parameter page (`0x7C00–0x7FFF`), raw reads agree | 1 024 |
| one read only (the other dropped that word); matches B | 524 |
| reads disagree; value that equals B kept (read errors: A at `0x5891–0x5893`, A2 at `0x0FCF`) | 4 |
| in neither read, copied from B | 11 (8 code bytes at `0x0C18–0x0C1B` and `0x64F8–0x64FB`, plus 3 erased bytes at `0x7BFD–0x7BFF` inside the discarded padding word) |

## 2. How the damage works (refined from Phase 6)

The reader delivers each 1 KiB block as exactly 1 KiB, so blocks start in step with the true image. Inside a block it drops some 4-byte words, and the block is padded at its end, usually with a copy of the first bytes of the **next** block. A few bytes are corrupted outright (A2 has `C6` where A and B have `46` at `0x0FCF`, a single flipped bit; A has `27 B8 90` where A2 and B have `4E B0 42` at `0x5891–0x5893`). Dropped words are ordinary code words, not repeats of their neighbours, so they cannot be guessed from context; the other read supplies them unless both dropped the same word (8 code bytes).

## 3. Parameter page, and a correction to Phase 6

At `0x7BFC` both reads hold `2E 00 73 FF`, the same word that starts the page at `0x7C00`: it is the block-end padding of block `0x7800`, not page data. The master page is therefore the 20 bytes from `0x7C00`, on which the two reads agree exactly:

`46, −141, 8400, −1, −24, −75, −34, −99, −1, −1` (int16, slots 0–9).

Phase 6 §7 started the page at the padding word and listed `46, −141, 46, −141, 8400, −1, −24, −75, −34, −99`; that is wrong and has been corrected in place. B's page is `102, −60, 8131, 11, 2, −42, −71, −38, 1024, 18432`. Slot 2 is close (8400 vs 8131) and slots 5–7 are negative on both boards, which supports the alignment; slots 0, 1, 3, 4 differ, as expected for per-board settings. Slots 8–9 are `0xFFFF` in both master reads (B holds 1024 and 18432), which cannot be told apart from never-programmed flash.

The residual-cluster counts quoted in Phase 6 §6 came from the older whole-image repair method and are superseded by the flagged positions in `master_reconstruction_summary.txt`.

## 4. What this does not establish

- No clean master read exists to compare with. The reconstruction is the consensus of two reads that share a defect type, using B only to align and to break ties.
- The 8 reference-filled code bytes are assumed equal to B because the master's code matched B at every other position either read covers; they are not observed.
- The parameter page assumes no word was dropped inside its first 20 bytes. Support: the page begins at a block start (where reads are in step), both reads agree on all 20 bytes, and the values resemble B's slot by slot. A fresh read of the master's flash at `0x08007C00` (for example with the ST-Link) would settle it; so would comparing the values the running master loads into RAM with the table above.
- Hall, angle, thermal and every other decoded structure is unaffected: it was decoded from B.

## 5. Reproduce

```sh
cd research/stock-fw/firmware
(cd original && sha256sum -c SHA256SUMS)
python3 -I build_master_reconstruction.py
```
