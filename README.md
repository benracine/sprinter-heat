# Hydronic Heating

One controlled guide for the Sprinter’s diesel heating and hot water.

```sh
./book/build.sh
```

→ `book/out/heat-and-hot-water.html` and `book/out/heat-and-hot-water.pdf`

That is the only report. Do not add parallel guides or alternate PDF/HTML names.

## Layout

```
book/           ← edit the guide here (markdown + diagrams)
  appendix/     part two
  research/     source register + verified requirements
  diagrams/     .mmd sources and .svg embeds
  out/          built HTML/PDF (generated)
sources/        manufacturer PDFs + blog links (citations only)
photos/         install photos (evidence; not part of the report body)
```

Part one is plain English for Tyrah (`book/00`–`05` + install). Part two is the technical appendix. Both HTML and PDF formats are intentional.

## Working rules

- Manufacturer documentation outranks blogs and inference.
- Critical values need a source and page.
- Unresolved items stay marked OPEN — do not guess into part one.
- Design changes go in `book/appendix/decisions.md`.
- Agents: see `AGENTS.md` and `.cursorignore` (binaries stay out of chat context).
