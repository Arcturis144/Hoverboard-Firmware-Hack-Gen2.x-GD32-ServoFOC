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
- [Conversation record](conversation/AVAILABLE_RECORD.txt): explicitly incomplete text record.
- [Manifest](manifest.json): original names, creation dates, source identifiers, byte counts, SHA-256 [Secure Hash Algorithm, 256-bit] checksums, and duplicate mappings.
- [Package contents](package-contents.json): searchable member inventory for all archived packages, including exact matches against the pre-archive repository.

## Interpretation

These are preserved historical outputs, not evidence that their code is integrated, tested, or selected for the current branch. Original filenames and technical claims are retained verbatim. Current [source inventory](../provenance/SOURCES.md), [architecture](../architecture/SERVO_ARCHITECTURE.md), and [bring-up instructions](../servo/R0_BRINGUP.md) take precedence.

The annotated board image contains pin and wiring claims that this archival pass did not validate. The archived firmware files are not designated release or flashing targets. The archive is outside the active source tree; this change does not select a new firmware backend.

## Coverage and missing material

Recovery used project-folder inventory, named-project searches, and the available generated-file listing from 2026-08-24 onward. Unrelated project files and uploaded third-party reference collections were excluded. This is a record of recovered artifacts, not proof that every file ever generated in the conversation was recovered. Ambiguously named images were not assigned to this project without evidence.

A complete message-by-message conversation export was not available. Earlier conversation summaries and retrieved excerpts cannot substitute for the original transcript. The available record identifies this gap; it must not be described as the full conversation.

## Updating this archive

1. Check whether new material already exists elsewhere in the repository, comparing contents rather than filenames.
2. Preserve a unique original under the relevant subfolder; index exact duplicates at their existing location.
3. Update INDEX.md and manifest.json with provenance and checksums; update package-contents.json for added packages.
4. When the complete conversation export is supplied, retain its original text under conversation/ and update the coverage note. Preserve speaker labels, message order, and timestamps present in the export; never invent missing messages.
5. Put adopted design changes in the active documentation and link back to the historical source.
