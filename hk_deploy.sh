#!/bin/bash
repo_url=$REPO_URL
repo_branch=$REPO_BRANCH

if [ -z "$repo_url" ] || [ -z "$repo_branch" ]; then
  echo "REPO_URL or REPO_BRANCH environment variable is not set. Set it and Restart..."
  exit 1
fi

if [ -d ".git" ]; then
  rm -rf .git
fi

req_txt=1
if [ ! -f ".req_installed" ]; then
  req_txt=0

git init -q
git config --global user.email drxxstrange@gmail.com
git config --global user.name SilentDemonSD
git remote add origin $repo_url
git fetch origin -q
git reset --hard origin/$repo_branch -q

if [ $req_txt -eq 1 ]; then
  pip install -r requirements.txt
fi

touch .req_installed

start_cmd=$START_CMD
if [ ! -z "$start_cmd" ]; then
  echo "HK-Loader : https://github.com/SilentDemonSD/HK-Loader | Thanks for Using, Now set Other Vars from Settings in Heroku."
  eval "$start_cmd"
else
  echo "START_CMD not specified. Exiting Now ..."
  exit 1
fi
