 #!/bin/bash

repo_url=$REPO_URL
if [ -z "$repo_url" ]; then
  echo "REPO_URL environment variable is not set. Set and Restart. Exiting ..."
  exit 1
fi

git clone "$repo_url" hk_dep
cd hk_dep
pip install -r requirements.txt

has_docker=$HAS_DOCKER
if [ "$has_docker" = "true" ]; then
  if [ -f "Dockerfile" ]; then
    docker build -t hk_load .
    docker run -it hk_load
  else
    echo "Dockerfile does not exist. Make a Dockerfile and Restart."
    exit 1
  fi
else
  start_cmd=$START_CMD
  if [ ! -z "$start_cmd" ]; then
    eval "$start_cmd"
  else
    python main.py
  echo "HK-Loader : https://github.com/SilentDemonSD/HK-Loader | Thanks for Using, Now set Other Vars from Settings in Heroku."
  fi
fi
