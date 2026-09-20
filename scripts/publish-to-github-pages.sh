#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_SCRIPT="$ROOT/book/build.sh"
OUT_DIR="$ROOT/book/out"
TARGET_DIR="${1:-$ROOT/docs}"
HTML_SOURCE="$OUT_DIR/heat-and-hot-water.html"
PDF_SOURCE="$OUT_DIR/heat-and-hot-water.pdf"

usage() {
  cat <<'EOF'
Usage:
  ./scripts/publish-to-github-pages.sh [target-dir]
  ./scripts/publish-to-github-pages.sh --help

This script rebuilds the PDF/HTML book and prepares a GitHub Pages-ready output
folder. By default it writes to ./docs and does NOT push to GitHub.

Examples:
  ./scripts/publish-to-github-pages.sh
  ./scripts/publish-to-github-pages.sh ./site
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ ! -x "$BUILD_SCRIPT" ]]; then
  echo "Build script not found: $BUILD_SCRIPT" >&2
  exit 1
fi

mkdir -p "$TARGET_DIR"

echo "Rebuilding the book..."
"$BUILD_SCRIPT"

if [[ ! -f "$HTML_SOURCE" ]]; then
  echo "Expected HTML output was not generated: $HTML_SOURCE" >&2
  exit 1
fi

cp "$HTML_SOURCE" "$TARGET_DIR/index.html"
if [[ -f "$PDF_SOURCE" ]]; then
  cp "$PDF_SOURCE" "$TARGET_DIR/"
fi

echo
printf 'Prepared GitHub Pages output in: %s\n' "$TARGET_DIR"
echo
printf 'Files ready:\n'
ls -1 "$TARGET_DIR" | sed 's#^#/#'
echo

echo "Next steps:"
echo "  1) git add $TARGET_DIR"
echo "  2) git commit -m \"Publish book\""
echo "  3) git push origin main"
echo

echo "For the easiest automated publishing, use GitHub Pages with the repo's docs folder:"
echo "  - GitHub: Settings → Pages → Source: GitHub Actions"
echo "  - Then push to main and let the workflow publish automatically."
