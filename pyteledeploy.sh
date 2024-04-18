#!/bin/bash

if [ -z "$REPO_URL" ] || [ -z "$REPO_BRANCH" ]; then
  echo "REPO_URL or REPO_BRANCH environment variable is not set. Exiting ..."
  exit 1
fi

if [ -d ".git" ]; then
  rm -rf .git
fi

git init -q
git config --global user.email drxxstrange@gmail.com
git config --global user.name SilentDemonSD
git remote add origin $REPO_URL
git fetch origin -q
git reset --hard origin/$REPO_BRANCH -q

pip install -q uv
uv venv
. .venv/bin/activate
uv pip install --system --no-cache-dir -q -r requirements.txt

if [ -z "$START_CMD" ]; then
  echo "START_CMD not specified. Exiting Now ..."
  exit 1
fi

echo "
░▀█▀▒██▀░█▒░▒██▀░▒░░█▒░░▄▀▄▒▄▀▄░█▀▄▒██▀▒█▀▄
░▒█▒░█▄▄▒█▄▄░█▄▄░▀▀▒█▄▄░▀▄▀░█▀█▒█▄▀░█▄▄░█▀▄
                                     v2.0.0
Repo : https://github.com/SilentDemonSD/HK-Loader By SilentDemonSD
Repo URL : $REPO_URL
Repo Branch : $REPO_BRANCH"

eval "$START_CMD"
