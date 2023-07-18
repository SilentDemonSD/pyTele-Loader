<div align=center>

[![](https://graph.org/file/97565a913c0133da1db6c.png)](#)
[Deploy Guide](https://github.com/SilentDemonSD/HK-Loader/edit/main/README.md#heroku-cli-guide) | [Contact Me](https://t.me/SilentDemonSD)

</div>

## ***HK-Loader & Updater***
A Simple **Shell Script** to make your Repo Deployable to Heroku.com via CLI _(Recommended)_ & Auto Updates on Restart with your Repository

## ***Heroku CLI Guide***

**Step 1 :** Git clone this Repo and change directory
> Make sure git is Installed in your system or quick run `apt-get install git pip curl -y`

```shell
git clone https://github.com/SilentDemonSD/HK-Loader && cd HK-Loader
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

**Step 5 :** Set git remote for Heroku.

```shell
heroku git:remote -a APP_NAME
```

**Step 6 :** Setup Config Variables for the script to run.

```shell
heroku config:set REPO_URL=xxx REPO_BRANCH=main START_CMD="python -m bot"
```

**Step 7 :** Now push to Heroku via git

```shell
git push heroku main -f
```

**Heroku CLI Commands :** [Click Here](https://devcenter.heroku.com/articles/heroku-cli-commands#heroku-config-set)


## Config SetUp
- `REPO_URL` - Deploy Repository URL, add Private Token if Repo is Private
- `REPO_BRANCH` - Repo Branch, you want to deploy with your REPO_URL.
- `START_CMD` - Trigger Command for your Bot to Run.
  > Examples : `python -m bot` ( `-m` is for inside Dir startup) or `python main.py` or `bash start.sh`

## ***Important Notes:***
- Only works with Non-Docker Repos
- If your Repo Uses additional Docker packages or Images, Add `Dockerfile` _(Must Remove Run Cmd)_ here and add `heroku.yml` file with content as:
  ```yml
  build:
    docker:
      web: Dockerfile
  run:
    web: chmod +x hk_deploy.sh && ./hk_deploy.sh
  ```
- Default process type is `web`, if you use other types, replace `web` from `heroku.yml` and `Procfile`

