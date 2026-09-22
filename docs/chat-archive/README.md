# Chat artifact archive

Recovered on 2026-09-21 for the Hoverboard open servo project.

This folder preserves historical project files generated in chat that were not already present in this repository. Start with [the artifact index](INDEX.md). The 40 recovered entries resolve to 37 distinct original files; three identical copies are indexed without duplicating their bytes.

## Contents

- `analysis/reports/`: original pin-map, factory-firmware, and implementation reports.
- `analysis/disassembly/`: original disassemblies and vector-table analysis.
- `packages/firmware-projects/`: historical Phase 1–4 projects and monitoring packages, retained as ZIP archives.
- `packages/uart-tools/` and `uart-tools/`: UART [Universal Asynchronous Receiver/Transmitter] diagnostic packages, sketch, and wiring notes.
- `firmware-snapshots/`: recovered binary and ELF [Executable and Linkable Format] snapshots.
- `images/`: the historical annotated board image.
- [Exported conversation record](conversation/export-2026-09-22/README.md): five complete exported user/assistant text trees, with active paths and alternate text nodes.
- [Earlier reconstruction](conversation/AVAILABLE_RECORD.txt): preserved, explicitly incomplete historical record.
- [Manifest](manifest.json): original names, creation dates, source identifiers, byte counts, SHA-256 [Secure Hash Algorithm, 256-bit] checksums, and duplicate mappings.
- [Package contents](package-contents.json): searchable member inventory for all archived packages, including exact matches against the pre-archive repository.

## Interpretation

These are preserved historical outputs, not evidence that their code is integrated, tested, or selected for the current branch. Original filenames and technical claims are retained verbatim. Current [source inventory](../provenance/SOURCES.md), [architecture](../architecture/SERVO_ARCHITECTURE.md), and [bring-up instructions](../servo/R0_BRINGUP.md) take precedence.

The annotated board image contains pin and wiring claims that this archival pass did not validate. The archived firmware files are not designated release or flashing targets. The archive is outside the active source tree; this change does not select a new firmware backend.

## Coverage and missing material

Recovery used project-folder inventory, named-project searches, and the available generated-file listing from 2026-08-24 onward. Unrelated project files and uploaded third-party reference collections were excluded. This is a record of recovered artifacts, not proof that every file ever generated in the conversation was recovered. Ambiguously named images were not assigned to this project without evidence.

On 2026-09-22, the user supplied an account export. All user/assistant text and multimodal-text nodes from the five identified project conversation trees are now preserved under `conversation/export-2026-09-22/`, with timestamps, parent identifiers, branch ordering and checksums. This supersedes the partial reconstruction for those trees. Non-text descriptors are retained; image contents are not transcribed. The coverage claim is limited to those exported trees, not every account conversation or artifact.

## Updating this archive

1. Check whether new material already exists elsewhere in the repository, comparing contents rather than filenames.
2. Preserve a unique original under the relevant subfolder; index exact duplicates at their existing location.
3. Update INDEX.md and manifest.json with provenance and checksums; update package-contents.json for added packages.
4. For subsequent exports, preserve original message text, speaker labels, parent relationships, alternate text nodes and timestamps under conversation/. Update the coverage manifest; never invent missing messages.
5. Put adopted design changes in the active documentation and link back to the historical source.
