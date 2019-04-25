#!/bin/sh

# Fail on unset variables and command errors
set -ex -o pipefail # -x: is for debugging

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

remote_branch="gh-pages"

rm -rf site
mkdir site
git worktree prune
rm -rf .git/worktrees/site/

git worktree add -B "${remote_branch}" site "origin/${remote_branch}"

mkdocs build

cd site
git add .
timestamp=$(date -u)
git commit -m "Automated deployment to GitHub Pages on ${timestamp}"
git push origin "${remote_branch}"
