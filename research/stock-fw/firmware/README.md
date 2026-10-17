# Firmware images

| File | What it is |
|---|---|
| `original/oriFWB.bin` | Slave board read, 64 KiB. Byte-identical to the file as dumped. Code in the lower 32 KiB, `0xFF` above. |
| `original/oriFWA.bin`, `original/oriFWA2.bin` | Two separate reads of the master board. Byte-identical to the files as dumped. **Both contain read damage** (dropped/duplicated words inside each 1 KiB block, a few bad bytes). Do not use them as-is. |
| `original/SHA256SUMS` | Hashes of the three originals (`cd original && sha256sum -c SHA256SUMS`). |
| `reconstructed/master_reconstructed.bin` | Best-estimate master image rebuilt from A and A2 (see below). 64 KiB, upper half `0xFF`. |
| `reconstructed/master_reconstruction_provenance.csv` | Every region of the reconstruction that is not simply "both reads agree", with its source. |
| `reconstructed/master_reconstruction_summary.txt` | Byte counts per source, the flagged read errors, and the hash. |
| `build_master_reconstruction.py` | Reproduces the reconstruction: `python3 -I build_master_reconstruction.py` (refuses to run unless the three inputs have the expected hashes). |

## What the reconstruction is, and is not

It is a research aid: **the most likely content of the master's flash given two damaged reads**, with every
uncertain byte listed. It has not been compared with a clean read of the board, and it must **never be
flashed** to a board. Report: `../FACTORY_FW_STEP8_MASTER_RECONSTRUCTION.md`.

Short version of the result: 31 205 bytes are confirmed by both master reads, 524 by one read (the other
had dropped that word), 4 bytes (`0x5891–0x5893`, `0x0FCF`) are read errors resolved by the third image
(B), 8 code bytes (`0x0C18–0x0C1B`, `0x64F8–0x64FB`) are in neither read and were copied from B, and the
parameter page `0x7C00–0x7C13` is the only place where the master differs from B (15 of its 20 bytes).

## Provenance and rights

The three originals are third-party vendor firmware read from the owner's boards for interoperability
research. They are **not** covered by this repository's GPL-3.0 licence, and the vendor's redistribution terms
are unknown. They are included at the repository owner's request; if the repository is made public or shared
more widely, consider whether these files should stay in it.
