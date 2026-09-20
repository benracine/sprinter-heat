# Agent notes

**One document only.** Audience is Tyrah for part one; part two is the technical appendix in the same file.

```sh
./book/build.sh
```

→ `book/out/heat-and-hot-water.html` **and** `.pdf` (both intentional).

Do not create or maintain any other report, guide PDF, or HTML alias.

## Where to work (keep context small)

| Path | Use |
|---|---|
| `book/00`–`05`, `install-in-this-order.md` | Part one (edit here first) |
| `book/front-matter.md`, `book/appendix/`, `book/research/` | Part two |
| `book/diagrams/*.mmd` (+ matching `.svg`) | Loop / air / electrical diagrams |
| `book/build.sh`, `book/style.css` | Build only |
| `sources/` | Manufacturer PDFs and blog links — **cite, do not dump into chat** |
| `photos/` | Evidence images — **cite path only; ignored from indexing** |

`.cursorignore` keeps `photos/`, PDFs, zips, `book/out/`, and `book/vendor/` out of agent context. Prefer opening one markdown file at a time over repo-wide globs.

**Method:** think of the **finished** HTML+PDF holistically. Default to wide, ambitious passes that sync Design → Numbers → Use → Status → Build → appendix. Narrow single-file edits only when explicitly scoped that way.

Writing standards follow [USU Engineering Writing Center technical writing standards](https://engineering.usu.edu/students/engineering-writing-center/writing-resources/technical-writing-standards), adapted in `.cursor/rules/tyrah-gift-book.mdc` (plus controlled part names for this van).

1. **Breadth first** — part one readable end-to-end: [The Parts](book/01-what-this-system-does.md) vocabulary locked, one loop story, honest status, no contradictions. Rebuild and skim.
2. **Depth second** — deepen one *theme* across files; keep install serial; sync facts into the appendix.

Do not split into a separate “gift only” vs “full only” build. Do not drop HTML or PDF.
