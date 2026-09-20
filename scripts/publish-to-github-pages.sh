#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_SCRIPT="$ROOT/book/build.sh"
OUT_DIR="$ROOT/book/out"
TARGET_DIR="$ROOT/docs"
HTML_SOURCE="$OUT_DIR/heat-and-hot-water.html"
PDF_SOURCE="$OUT_DIR/heat-and-hot-water.pdf"
PUSH_BRANCH="gh-pages"
REMOTE="origin"
AUTO_PUSH=0

usage() {
  cat <<'EOF'
Usage:
  ./scripts/publish-to-github-pages.sh [--push] [--branch gh-pages] [--remote origin] [target-dir]

Options:
  --push             actually push the generated site to GitHub Pages branch
  --branch NAME      branch to push to (default: gh-pages)
  --remote NAME      git remote to push to (default: origin)
  target-dir         output directory to prepare (default: ./docs)
  -h, --help         show this help

Examples:
  ./scripts/publish-to-github-pages.sh
  ./scripts/publish-to-github-pages.sh --push
  ./scripts/publish-to-github-pages.sh --push --branch gh-pages
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --push)
      AUTO_PUSH=1
      ;;
    --branch)
      shift
      PUSH_BRANCH="${1:-gh-pages}"
      ;;
    --remote)
      shift
      REMOTE="${1:-origin}"
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    --)
      shift
      break
      ;;
    *)
      TARGET_DIR="$1"
      ;;
  esac
  shift
done

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

echo "Prepared GitHub Pages output in: $TARGET_DIR"

echo
if [[ "$AUTO_PUSH" -eq 1 ]]; then
  if ! git -C "$ROOT" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "This directory is not a Git repository, so it cannot be pushed." >&2
    exit 1
  fi

  if ! git -C "$ROOT" remote get-url "$REMOTE" >/dev/null 2>&1; then
    echo "Git remote '$REMOTE' was not found; add it first with: git remote add $REMOTE <url>" >&2
    exit 1
  fi

  WORKTREE_DIR="$(mktemp -d "${TMPDIR:-/tmp}/gh-pages.XXXXXX")"
  trap 'git -C "$ROOT" worktree remove --force "$WORKTREE_DIR" >/dev/null 2>&1 || true; rm -rf "$WORKTREE_DIR"' EXIT

  echo "Creating temporary GitHub Pages worktree..."
  git -C "$ROOT" worktree add --detach "$WORKTREE_DIR" HEAD >/dev/null
  git -C "$WORKTREE_DIR" checkout --orphan "$PUSH_BRANCH" >/dev/null 2>&1 || true
  git -C "$WORKTREE_DIR" rm -rf --ignore-unmatch . >/dev/null 2>&1 || true

  cp -R "$TARGET_DIR"/. "$WORKTREE_DIR"/
  git -C "$WORKTREE_DIR" add -A

  if git -C "$WORKTREE_DIR" diff --cached --quiet; then
    echo "No published-site changes to push."
    exit 0
  fi

  git -C "$WORKTREE_DIR" -c user.name='GitHub Pages Publisher' -c user.email='pages@local' commit -m "Publish book to GitHub Pages" >/dev/null
  git -C "$WORKTREE_DIR" push "$REMOTE" "$PUSH_BRANCH"

  echo
  echo "Pushed the generated site to $REMOTE/$PUSH_BRANCH"
  exit 0
fi

echo "Two easy publish options:"
echo "  1) GitHub Pages from /docs folder"
echo "     - Commit the files in $TARGET_DIR"
echo "     - In GitHub: Settings → Pages → Source: Deploy from a branch"
echo "     - Choose branch: main, folder: /docs"
echo "  2) A gh-pages branch"
echo "     - run: ./scripts/publish-to-github-pages.sh --push --branch gh-pages"
echo "     - then GitHub Pages can serve that branch"
echo

echo "Current output files:"
ls -1 "$TARGET_DIR" | sed 's#^#/#'
