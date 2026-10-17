#!/usr/bin/env python3
"""Rebuild the master-board (A) firmware image from its two damaged reads, oriFWA.bin and oriFWA2.bin,
using the slave read oriFWB.bin only as an alignment reference.

Usage:  python3 build_master_reconstruction.py [original_dir] [out_dir]
        (defaults: ./original  ./reconstructed)

Damage model (established in the Phase 6 report and re-checked here): the reader returns each 1 KiB
block as exactly 1 KiB, but inside a block some 4-byte words are dropped, and the block is padded at
its end -- usually with a copy of the first bytes of the NEXT block. Blocks therefore start in step with
the true image. A second, rarer defect is a flipped bit or a few corrupted bytes.

Method (per 1 KiB block, 0x0000-0x7BFF):
  1. align each read to the same block of B with difflib; bytes the read lacks become gaps, bytes the
     read has in excess (the padding) are dropped;
  2. for every byte position combine the two reads:
       both agree                       -> accept (even where B differs: that would be master-specific)
       both present, they disagree      -> keep the value that equals B if exactly one does, else FLAG
       only one read has the byte       -> accept it
       neither read has the byte        -> copy from B and FLAG as "reference-filled"
Block 0x7C00-0x7FFF (the parameter page, where the master legitimately differs from B so alignment to
B is meaningless) is taken from the raw reads, which must agree with each other; the padding word that
precedes it at 0x7BFC is a copy of its first word and is discarded.
The upper 32 KiB of each dump is 0xFF in all three files and is kept as 0xFF.

Outputs (out_dir): master_reconstructed.bin (64 KiB), master_reconstruction_provenance.csv,
master_reconstruction_summary.txt. The image is a research reconstruction and must never be flashed.
"""
import csv
import difflib
import hashlib
import os
import struct
import sys

EXPECT = {
    "oriFWA.bin": "c0d45253cc601ba1bc2291f3493203122bd9f66237e942f42b293d08a7a50c13",
    "oriFWA2.bin": "7f311f8b87aa3f1d476b83cbf45c1b36440d59af48caea159f1e4ed6abb34718",
    "oriFWB.bin": "f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6",
}
BLOCK = 0x400
PAGE = 0x7C00
SRC_NAMES = {
    "agree": "both reads agree",
    "agree_diff_B": "both reads agree, differs from B (master-specific)",
    "majority_B": "reads disagree; value kept = the one equal to B",
    "single": "one read only (matches B)",
    "single_diff_B": "one read only, DIFFERS from B",
    "ref_fill": "neither read has it: copied from B",
    "conflict": "reads disagree, neither equals B (copied from B)",
    "page_agree": "parameter page: raw reads agree",
    "upper_ff": "upper half 0xFF in all three dumps",
}


def sha(path):
    with open(path, "rb") as fh:
        return hashlib.sha256(fh.read()).hexdigest()


def align_block(x, ref):
    """-> list of len(ref): byte from x aligned to each ref position, or None where x lacks it."""
    val = [None] * len(ref)
    sm = difflib.SequenceMatcher(None, x, ref, autojunk=False)
    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag in ("equal", "replace"):
            for k in range(min(i2 - i1, j2 - j1)):
                val[j1 + k] = x[i1 + k]
        # "insert" = ref has bytes x lacks (gap); "delete" = x has extra bytes (padding): both leave val as is
    return val


def reconstruct(A, A2, B):
    n = 0x8000
    out = bytearray(b"\xff" * 0x10000)
    prov = [""] * 0x10000
    flags = []                                  # (offset, kind, A, A2, B, chosen)
    for blk in range(0, PAGE, BLOCK):
        ref = B[blk:blk + BLOCK]
        va = align_block(A[blk:blk + BLOCK], ref)
        vb = align_block(A2[blk:blk + BLOCK], ref)
        for k in range(BLOCK):
            j = blk + k
            a, b, r = va[k], vb[k], ref[k]
            if a is not None and b is not None:
                if a == b:
                    out[j], prov[j] = a, "agree" if a == r else "agree_diff_B"
                elif a == r:
                    out[j], prov[j] = a, "majority_B"
                elif b == r:
                    out[j], prov[j] = b, "majority_B"
                else:
                    out[j], prov[j] = r, "conflict"
            elif a is not None or b is not None:
                v = a if a is not None else b
                out[j], prov[j] = v, "single" if v == r else "single_diff_B"
            else:
                out[j], prov[j] = r, "ref_fill"
            if prov[j] in ("majority_B", "single_diff_B", "ref_fill", "conflict", "agree_diff_B"):
                flags.append((j, prov[j], a, b, r, out[j]))
    # parameter page block 0x7C00-0x7FFF from the raw reads
    pa, pb = A[PAGE:PAGE + 0x14], A2[PAGE:PAGE + 0x14]
    if pa != pb:
        raise SystemExit("raw parameter pages of A and A2 disagree: %s vs %s" % (pa.hex(), pb.hex()))
    for k in range(0x14):
        out[PAGE + k], prov[PAGE + k] = pa[k], "page_agree"
        flags.append((PAGE + k, "page_agree", pa[k], pb[k], B[PAGE + k], pa[k]))
    for j in range(PAGE + 0x14, n):
        out[j], prov[j] = 0xFF, "page_agree"
    for j in range(n, 0x10000):
        prov[j] = "upper_ff"
    return bytes(out), prov, flags


def runs(prov, lo, hi):
    res, start = [], lo
    for j in range(lo + 1, hi + 1):
        if j == hi or prov[j] != prov[start]:
            res.append((start, j, prov[start]))
            start = j
    return res


def main(odir="original", outdir="reconstructed"):
    paths = {k: os.path.join(odir, k) for k in EXPECT}
    for k, p in paths.items():
        if sha(p) != EXPECT[k]:
            raise SystemExit("%s has an unexpected SHA-256 (%s)" % (k, sha(p)))
    A, A2, B = (open(paths[k], "rb").read() for k in ("oriFWA.bin", "oriFWA2.bin", "oriFWB.bin"))
    for name, X in (("A", A), ("A2", A2), ("B", B)):
        if len(X) != 0x10000 or set(X[0x8000:]) != {0xFF}:
            raise SystemExit("%s: expected 64 KiB with an all-0xFF upper half" % name)

    img, prov, flags = reconstruct(A, A2, B)

    # --- self-consistency checks -------------------------------------------------------------
    diffB = [j for j in range(0x10000) if img[j] != B[j]]
    notes = []
    notes.append("reconstructed master differs from slave B at %d byte(s): %s" % (
        len(diffB), ", ".join("0x%04X" % j for j in diffB[:40]) + (" ..." if len(diffB) > 40 else "")))
    outside_page = [j for j in diffB if not (PAGE <= j < PAGE + 0x14)]
    notes.append("  of which outside the parameter page 0x7C00-0x7C13: %d" % len(outside_page))
    # every byte either read has (after block alignment) must equal the reconstruction, except the flagged ones
    unexplained = 0
    for label, X in (("A", A), ("A2", A2)):
        bad = 0
        for blk in range(0, PAGE, BLOCK):
            v = align_block(X[blk:blk + BLOCK], B[blk:blk + BLOCK])
            for k in range(BLOCK):
                if v[k] is not None and v[k] != img[blk + k]:
                    bad += 1
        notes.append("%s: %d aligned byte(s) differ from the reconstruction (the flagged read errors)" % (label, bad))
        unexplained += bad
    kinds = {}
    for j in range(0x8000):
        kinds[prov[j]] = kinds.get(prov[j], 0) + 1

    os.makedirs(outdir, exist_ok=True)
    with open(os.path.join(outdir, "master_reconstructed.bin"), "wb") as fh:
        fh.write(img)
    with open(os.path.join(outdir, "master_reconstruction_provenance.csv"), "w", newline="") as fh:
        w = csv.writer(fh)
        w.writerow(["start", "end_exclusive", "bytes", "source", "meaning"])
        for s, e, k in runs(prov, 0, 0x8000):
            if k == "agree" and e - s >= 16:
                continue                       # the bulk of the image; summarised in the counts
            w.writerow(["0x%04X" % s, "0x%04X" % e, e - s, k, SRC_NAMES[k]])
    h = hashlib.sha256(img).hexdigest()
    lines = ["master_reconstructed.bin  SHA-256 %s" % h, ""]
    lines += ["bytes by source (code half, 32768 bytes):"]
    for k in SRC_NAMES:
        if k in kinds:
            lines.append("  %-14s %6d  %s" % (k, kinds[k], SRC_NAMES[k]))
    lines += [""] + notes + [""]
    lines.append("flagged positions (offset kind A A2 B chosen):")
    for j, k, a, b, r, c in flags:
        if k != "page_agree":
            f = lambda v: "--" if v is None else "%02X" % v
            lines.append("  0x%04X %-13s A=%s A2=%s B=%02X -> %02X" % (j, k, f(a), f(b), r, c))
    page = struct.unpack_from("<10h", img, PAGE)
    lines += ["", "master parameter page 0x7C00 as int16: %s" % list(page),
              "raw padding word before the page (0x7BFC, discarded): A=%s A2=%s" % (A[0x7BFC:0x7C00].hex(), A2[0x7BFC:0x7C00].hex())]
    with open(os.path.join(outdir, "master_reconstruction_summary.txt"), "w") as fh:
        fh.write("\n".join(lines) + "\n")
    print("\n".join(lines))
    return 0


if __name__ == "__main__":
    sys.exit(main(*sys.argv[1:3]))
