#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This repository is not initialized as a Git repo." >&2
  exit 1
fi

if ! git remote get-url origin >/dev/null 2>&1; then
  echo "Git remote 'origin' is not configured." >&2
  exit 1
fi

if ! git ls-remote origin HEAD >/dev/null 2>&1; then
  echo "GitHub authentication is not working for the origin remote." >&2
  echo "Fix Git authentication, then run this script again." >&2
  exit 1
fi

./scripts/publish-to-github-pages.sh

if [[ -z "$(git status --porcelain)" ]]; then
  echo "Working tree is clean; nothing to commit."
  echo "If GitHub Pages is enabled and the workflow is active, the latest build is already ready."
  exit 0
fi

git add docs scripts/deploy-pages.sh
git commit -m "Publish update"

git push origin main

echo

echo "Now enable GitHub Pages in GitHub:"
echo "  1) Open your repo on GitHub"
echo "  2) Settings → Pages"
echo "  3) Source: GitHub Actions"
echo "  4) Save"
echo
echo "Then your site should appear at:"
echo "  https://benracine.github.io/sprinter-heat/"
