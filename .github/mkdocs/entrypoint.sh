#!/bin/sh

# Fail on unset variables and command errors
set -ex -o pipefail # -x: is for debugging

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

remote_branch="gh-pages"

git checkout "${remote_branch}" || \
    git checkout -b "${remote_branch}" "origin/${remote_branch}" || \
        git checkout --orphan "${remote_branch}" && \
        git reset --hard && \
        git commit --allow-empty -m "Initializing gh-pages branch" && \
        git push origin "${remote_branch}"
git checkout master

rm -rf site
mkdir site
git worktree prune
rm -rf .git/worktrees/site/

git worktree add -B "${remote_branch}" site "origin/${remote_branch}"
rm -rf site/*

mkdocs build

cd site
git add .
timestamp=$(date -u)
git commit -m "Automated deployment to GitHub Pages on ${timestamp}"
git push origin "${remote_branch}"
