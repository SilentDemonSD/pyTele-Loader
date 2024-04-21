<div align="center">
    <a href="https://github.com/SilentDemonSD/pyTele-Loader">
        <kbd>
            <img width="200" src="https://te.legra.ph/file/c7981fc6bb3f65f42ba38.jpg" alt="Tele-Loader Logo">
        </kbd>
    </a>
    <br>
    
[_Updates_](https://t.me/FZXParadox) | [_Heroku CLI_](#-heroku-cli-guide-optional)  |  [_Contact Me_](https://t.me/MysterySD)
    
</div> 

---

## 🎛 ***pyTele-Loader & Updater***

<div align="center">
  
A Simple **.sh & .py Script** with python web to make your Repo Deployable to Heroku.com, Koyeb, Render, Scalingo, etc.. & Auto Update and Fetch your Repo Updates / Commits on Restart with your Repository URL.

</div>

> [!WARNING]
> _This Repo Only tends to Make Deployment as easy as Possible, it doesn't make Banned Repo Unban or vice versa._

---

## ***Heroku One-Click Deploy***

<div align="center">
    
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](http://heroku.com/deploy?template=https://github.com/SilentDemonSD/pyTele-Loader)

</div

---

## ***Koyeb One-Click Deploy***

<div align="center">


[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?type=git&env[REPO_URL]=%20&env[REPO_BRANCH]=%20&env[START_CMD]=%20&env[BASE_URL]=%20&region=fra&region=par&repository=github.com/SilentDemonSD/pyTele-Loader&branch=main)

</div>

---

## ***Render One-Click Deploy***

<div align="center">

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/SilentDemonSD/pyTele-Loader) 

</div>

---

## ***Scalingo One-Click Deploy***

> [!CAUTION]
> Broken, `python3` not found !

<div align="center">

[![Deploy on Scalingo](https://cdn.scalingo.com/deploy/button.svg)](https://dashboard.scalingo.com/create/app?source=https://github.com/SilentDemonSD/pyTele-Loader#main)

</div>

---

> [!NOTE]
> _More Services will be Added soon. If want to suggest supporting sites, open a Issue to Support that Site !_

---

## 📑 ***Heroku CLI Guide (Optional)*** 

<details>
    <summary><i>Learn more</i><sup><kbd>Click Here to Expand</kbd></sup></summary>

**Step 1 :** Git clone this Repo and change directory
> Make sure git is Installed in your system or quick run `apt-get install git curl -y`

```shell
git clone https://github.com/SilentDemonSD/pyTele-Loader && cd pyTele-Loader
```

**Step 2 :** Now Install Heroku in your Sytem or checkout Official Heroku Deploy Docs, or Download via `apt-get` or `npm`
> For Android : Use `termux` for CLI usage

```shell
curl https://cli-assets.heroku.com/install.sh | sh
```

**Step 3 :** Login into Heroku and Log In CLI via Browser 

```shell
heroku login 
```

**Step 4 :** Create Heroku App and specify region with App Name

```shell
heroku create --region us APP_NAME
```

**Notes:**
- `--region eu` for Europe Server and `--region us` for United States Server.
- `APP_NAME` should be replaced with your unique app name _(Optional)_. If not given it generates a random name.
- `--stack container` for setting stack to container for Dockerfile.
- `--buildpack heroku/python` for using build slug for repo deploy and build.
- `--team TEAM_NAME` for creating App in Teams

**Step 5 :** Set Local git remote for Heroku.

```shell
heroku git:remote -a APP_NAME
```

**Step 6 :** Setup Config Variables for the script to run.

```shell
heroku config:set REPO_URL=https://github.com/user/repo REPO_BRANCH=main START_CMD="python -m bot"
```

**Step 7 :** Now push to Heroku via git forcefully to build.

```shell
git push heroku main -f
```

**All Heroku CLI Commands :** [Click Here](https://devcenter.heroku.com/articles/heroku-cli-commands#heroku-config-set)

</details>

---

## Config SetUp
- `REPO_URL` - Deploy Repository URL, add Private Token if Repo is Private
- `REPO_BRANCH` - Repo Branch, you want to deploy with your REPO_URL.
- `START_CMD` - Trigger Command for your Bot to Run.
  > Examples : `python -m bot` ( `-m` is for inside Dir startup) or `python main.py` or `bash start.sh`
- `BASE_URL` - Default Web service, Add Base URL to ping server every 10mins
- `PORT` _(Optional)_ - Not necessarily needed until you specify a different port.

---

## ***Important Notes:***
- Repo made for Non-Docker Repos but can be customized for Docker Repos _(Read Ahead)_

**Heroku Guide :**
- If your Repo Uses additional Docker packages or Images, Add `Dockerfile` in root directory and also add `heroku.yml` file with content as:
  ```yaml
  build:
    docker:
      web: Dockerfile
  run:
    web: chmod +x hk_deploy.sh && ./hk_deploy.sh
  ```
  - Also Run a extra Command before Deploy or set stack at app creation.
    ```shell
    heroku stack:set container -a APP_NAME
    ```
    **Available Stacks :** `container` (Dockerfile), `heroku-22` (Default), `heroku-20` (python-3.8.16 Version Usage) and [More](https://devcenter.heroku.com/articles/stack#stack-support-details)
- Default process type is `web`, If you use other types like `worker`.
  - Replace `web` with `worker` from `heroku.yml` and `Procfile` files.
  ```diff
  build:
    docker:
  --    web: Dockerfile
  ++    worker: Dockerfile
  run:
  --  web: chmod +x hk_deploy.sh && ./hk_deploy.sh
  ++  worker: chmod +x hk_deploy.sh && ./hk_deploy.sh
  ```

---

## ***References***
- _Concept & Made by SilentDemonSD_
- _Helped via git docs & AI_
