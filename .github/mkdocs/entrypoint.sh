#!/bin/sh

# Fail on unset variables and command errors
set -ex -o pipefail # -x: is for debugging

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

remote_branch="gh-pages"

git worktree add -B "${remote_branch}" site "origin/${remote_branch}"
cd site
git pull origin "${remote_branch}"
cd ..

mkdocs build

cd site
git add --all
timestamp=$(date -u)
git commit -m "Automated deployment to GitHub Pages on ${timestamp}"
git push origin "${remote_branch}"
cd ..
