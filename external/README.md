# External reference sources

`external/` is reserved for pinned reference repositories or other external source material used during development.

External projects are **not** automatically part of the firmware build and should not be added to compiler include/source paths merely because they exist here.

Before adding a reference source:

1. record it in `docs/provenance/SOURCES.md`;
2. record the exact commit/tag;
3. record its license and intended role;
4. decide whether it is a reference, test dependency, tool dependency, or production dependency;
5. keep production firmware independent unless the dependency is deliberate.

Likely early references include the PR #28 development branch, MiniFOC, and EFeru FOC projects. Whether these are represented as Git submodules, additional remotes, or documentation-only references will be decided when they are first needed.
