#!/bin/sh

# Fail on unset variables and command errors
set -ex -o pipefail # -x: is for debugging

mkdir /root/.ssh
ssh-keyscan -t rsa github.com > /root/.ssh/known_hosts
echo "${ACTIONS_DEPLOY_KEY}" > /root/.ssh/id_rsa
chmod 400 /root/.ssh/id_rsa

mkdocs build

remote_repo="git@github.com:${GITHUB_REPOSITORY}.git"
remote_branch="gh-pages"

cd site
git init
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git remote add origin "${remote_repo}"
git checkout "${remote_branch}" || git checkout --orphan "${remote_branch}"
git add --all
timestamp=$(date -u)
git commit -m "Automated deployment to GitHub Pages on ${timestamp} ${GITHUB_SHA} ${GITHUB_REF}"
git push origin "${remote_branch}" --force
