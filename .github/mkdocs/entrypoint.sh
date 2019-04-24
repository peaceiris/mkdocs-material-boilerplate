#!/bin/sh

# Fail on unset variables and command errors
set -ex -o pipefail # -x: is for debugging

remote_repo="https://github.com/${GITHUB_REPOSITORY}.git"
remote_branch="gh-pages"

mkdocs build

cd site
git init
git remote add origin "${remote_repo}"
git checkout "${remote_branch}" || git checkout --orphan "${remote_branch}"
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git add .
timestamp=$(date -u)
git commit -m "Automated deployment to GitHub Pages on ${timestamp}"
git push origin "${remote_branch}" --force
