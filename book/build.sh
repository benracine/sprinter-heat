#!/usr/bin/env bash
# One document → HTML + PDF. Nothing else.
# Part one: plain-English install path. Part two: technical appendix.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BOOK="$ROOT/book"
OUT="$BOOK/out"
mkdir -p "$OUT"

TITLE="Heat & hot water"
PDF_NAME="heat-and-hot-water.pdf"
HTML_NAME="heat-and-hot-water.html"

# Remove stale alternate report outputs if any linger
rm -f \
  "$OUT/hydronic-heating-build-book.html" \
  "$OUT/hydronic-heating-build-book.pdf" \
  "$OUT/hydronic-heating-install-guide.html" \
  "$OUT/hydronic-heating-install-guide.pdf"

FILES=(
  "$BOOK/00-how-to-use.md"
  "$BOOK/04-safety.md"
  "$BOOK/01-what-this-system-does.md"
  "$BOOK/05-the-numbers.md"
  "$BOOK/03-living-with-it.md"
  "$BOOK/02-where-things-are.md"
  "$BOOK/install-in-this-order.md"
  "$BOOK/appendix/00-technical-appendix.md"
  "$BOOK/front-matter.md"
  "$BOOK/appendix/hazards.md"
  "$BOOK/appendix/01-system-requirements.md"
  "$BOOK/appendix/02-system-architecture.md"
  "$BOOK/appendix/03-parts-inventory.md"
  "$BOOK/appendix/04-bom-and-missing-parts.md"
  "$BOOK/appendix/05-mechanical-layout.md"
  "$BOOK/appendix/06-coolant-loop.md"
  "$BOOK/appendix/07-fuel-system.md"
  "$BOOK/appendix/08-exhaust-and-combustion-air.md"
  "$BOOK/appendix/09-electrical-and-controls.md"
  "$BOOK/appendix/10-installation-procedure.md"
  "$BOOK/appendix/11-commissioning-procedure.md"
  "$BOOK/appendix/12-isotemp-value-study.md"
  "$BOOK/appendix/decisions.md"
  "$BOOK/appendix/open-questions.md"
  "$BOOK/research/verified-requirements.md"
  "$BOOK/research/source-register.md"
)

PANDOC=""
if command -v pandoc >/dev/null 2>&1; then
  PANDOC="$(command -v pandoc)"
else
  for candidate in \
    "$BOOK/vendor/pandoc-3.11-x86_64/bin/pandoc" \
    "$BOOK/vendor/pandoc-"*"/bin/pandoc" \
    /usr/local/opt/pandoc/bin/pandoc \
    /opt/homebrew/opt/pandoc/bin/pandoc
  do
    if [[ -x "$candidate" ]]; then
      PANDOC="$candidate"
      break
    fi
  done
fi

if [[ -z "$PANDOC" ]]; then
  echo "pandoc is not on PATH." >&2
  exit 1
fi
echo "Using $PANDOC"

COMMON=(
  "$BOOK/metadata.yaml"
  "${FILES[@]}"
  --from markdown+fenced_divs
  --standalone
  --toc
  --toc-depth=3
  --metadata "title=$TITLE"
  --resource-path="$BOOK:$ROOT"
)

echo "Writing $OUT/$HTML_NAME"
"$PANDOC" "${COMMON[@]}" \
  --to html5 \
  --embed-resources \
  --css "$BOOK/style.css" \
  --metadata "pagetitle=$TITLE" \
  -o "$OUT/$HTML_NAME"

pdf_out="$OUT/$PDF_NAME"
wrote_pdf=0

for chrome in \
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  "/Applications/Chromium.app/Contents/MacOS/Chromium" \
  "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"
do
  if [[ -x "$chrome" ]]; then
    echo "Writing $pdf_out (Chrome headless)"
    if "$chrome" --headless --disable-gpu --no-pdf-header-footer \
      --print-to-pdf="$pdf_out" \
      "file://$OUT/$HTML_NAME" 2>/dev/null \
      && [[ -s "$pdf_out" ]]; then
      wrote_pdf=1
    fi
    break
  fi
done

if [[ "$wrote_pdf" -eq 0 ]] && command -v weasyprint >/dev/null 2>&1; then
  echo "Writing $pdf_out (weasyprint)"
  weasyprint "$OUT/$HTML_NAME" "$pdf_out" && wrote_pdf=1
fi

if [[ "$wrote_pdf" -eq 0 ]] && command -v typst >/dev/null 2>&1; then
  echo "Writing $pdf_out (typst)"
  "$PANDOC" "${COMMON[@]}" --to pdf --pdf-engine=typst -o "$pdf_out" && wrote_pdf=1
fi

if [[ "$wrote_pdf" -eq 0 ]]; then
  echo "HTML ready: $OUT/$HTML_NAME"
  echo "No PDF engine found." >&2
  exit 0
fi

echo "Done."
echo "  $OUT/$HTML_NAME"
echo "  $pdf_out"
