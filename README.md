<h1 align="center">
<img src="https://raw.githubusercontent.com/peaceiris/mkdocs-material-boilerplate/master/images/graduate-cap.png" alt="Front-End Checklist" width="170">
<br>MkDocs Material<br>Boilerplate - Starter Kit
</h1>

![material.png](https://raw.githubusercontent.com/peaceiris/mkdocs-material-boilerplate/master/images/material.png)


## Table of Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Status badges](#status-badges)
- [Getting started](#getting-started)
  - [Docker](#docker)
  - [pipenv](#pipenv)
  - [pip (conda)](#pip-conda)
- [Host on GitHub Pages](#host-on-github-pages)
  - [Build with `mkdocs gh-deploy`](#build-with-mkdocs-gh-deploy)
    - [Deploy with `docker`](#deploy-with-docker)
    - [Deploy with `pipenv`](#deploy-with-pipenv)
  - [Build and deploy with CircleCI](#build-and-deploy-with-circleci)
  - [Build with GitHub Actions](#build-with-github-actions)
- [Host on GitLab Pages](#host-on-gitlab-pages)
- [Host on Netlify](#host-on-netlify)
- [Host on AWS Amplify Console](#host-on-aws-amplify-console)
- [Links](#links)
- [License](#license)
- [Support Author](#support-author)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## Status badges

<details>
<summary>Click to expand 👈</summary>

<!-- https://shields.io/ -->
<!-- https://microbadger.com/ -->

- ![license](https://img.shields.io/github/license/peaceiris/mkdocs-material-boilerplate.svg)
- GitHub
    - ![release](https://img.shields.io/github/release/peaceiris/mkdocs-material-boilerplate.svg)
    - ![github release date](https://img.shields.io/github/release-date/peaceiris/mkdocs-material-boilerplate.svg)
    - ![GitHub All Releases](https://img.shields.io/github/downloads/peaceiris/mkdocs-material-boilerplate/total.svg)
    - [![CircleCI status badge](https://circleci.com/gh/peaceiris/mkdocs-material-boilerplate/tree/master.svg?style=svg)](https://circleci.com/gh/peaceiris/mkdocs-material-boilerplate/tree/master)
- GitLab
    - ![Gitlab pipeline status](https://img.shields.io/gitlab/pipeline/peaceiris/mkdocs-material-boilerplate.svg?style=flat)
-  Netlify
    - [![Netlify Status](https://api.netlify.com/api/v1/badges/9c95ccf4-5c1e-447b-8025-dd0b6f8764a5/deploy-status)](https://app.netlify.com/sites/mkdocs-material/deploys)
- Docker
    - ![docker pulls](https://img.shields.io/docker/pulls/peaceiris/mkdocs-material.svg)
    - ![docker stars](https://img.shields.io/docker/stars/peaceiris/mkdocs-material.svg)
    - [![docker image size](https://images.microbadger.com/badges/image/peaceiris/mkdocs-material.svg)](https://microbadger.com/images/peaceiris/mkdocs-material "Get your own image badge on microbadger.com")

</details>


## Getting started

```sh
git clone https://github.com/peaceiris/mkdocs-material-boilerplate.git
cd mkdocs-material-boilerplate
```

### Docker

- [peaceiris/mkdocs-material - Docker Hub]

<!-- https://dockeri.co/ -->
[![DockerHub Badge](https://dockeri.co/image/peaceiris/mkdocs-material)](https://hub.docker.com/r/peaceiris/mkdocs-material)

```sh
docker pull peaceiris/mkdocs-material
./task.sh -s  # mkdocs serve
./task.sh -b  # mkdocs build
./task.sh -d  # mkdocs gh-deploy
./task.sh -V  # mkdocs --version
./task.sh -h  # mkdocs --help
```

Serving on [localhost:8000](http://localhost:8000)

### pipenv

```
pipenv sync
pipenv run version    # mkdocs --version
pipenv run help       # mkdocs --help
pipenv run serve      # mkdocs serve
pipenv run build      # mkdocs build
pipenv run gh-deploy  # mkdocs gh-deploy
```

### pip (conda)

```
pip install -r requirements.txt
```



## Host on GitHub Pages

- [Demo site on GitHub Pages] (build & deploy with CircleCI)

### Build with `mkdocs gh-deploy`

#### Deploy with `docker`

1. Create a [Personal access token]. (Check only `repo`)
2. Run the following scripts.

```
./task.sh -d  # mkdocs gh-deploy
# Enter github username
# Enter the Personal access token
```

#### Deploy with `pipenv`

```
pipenv run gh-deploy  # mkdocs gh-deploy
```

### Build and deploy with CircleCI

- Set these **Environment Variables**.
    - `USER_NAME`: GitHub ID
    - `USER_EMAIL`: Email
    - `GITHUB_TOKEN`: [Personal access token]

### Build with GitHub Actions

TBW.


## Host on GitLab Pages

- [peaceiris/mkdocs-material-boilerplate - GitLab]
- [Demo site on GitLab Pages] (build & deploy with GitLab CI/CD)


## Host on Netlify

- [Demo site on Netlify] (build & deploy with Netlify)

Create GitHub repository and deploy to Netlify in 1 min.

[![Deploy to Netlify from GitHub](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/peaceiris/mkdocs-material-boilerplate)


## Host on AWS Amplify Console

- [Demo site on Amplify Console] (build & deploy with Amplify Console)
    - ID: `github`
    - Password: `OhGhiNu5On5Ohzuva6ma`

You can use **Password protection**. Set TTL to `600` sec.


## Links

- [mkdocs/mkdocs: Project documentation with Markdown - GitHub]
- [squidfunk/mkdocs-material: A Material Design theme for MkDocs]
- [peaceiris/mkdocs-material - Docker Hub]
- [peaceiris/mkdocs-material-boilerplate - GitLab]
- [Demo site on GitHub Pages]
- [Demo site on GitLab Pages]
- [Demo site on Netlify]
- [Demo site on Amplify Console]


## License

- [MIT License](https://github.com/peaceiris/mkdocs-material-boilerplate/blob/master/LICENSE)
- [The graduate cap icon](https://www.flaticon.com/free-icon/graduate-cap_62627) made by [Freepik](https://www.freepik.com/) from [www.flaticon.com](https://www.flaticon.com/) is licensed by [CC 3.0 BY](http://creativecommons.org/licenses/by/3.0/)


## Support Author

- [Amazon wish list](http://amzn.asia/ilWK0Yj)

<div align="right">
<a href="#table-of-contents">Back to TOC ☝️</a>
</div>


<!-- Internal References -->
<!-- External References -->
[mkdocs/mkdocs: Project documentation with Markdown - GitHub]: https://github.com/mkdocs/mkdocs/
[squidfunk/mkdocs-material: A Material Design theme for MkDocs]: https://github.com/squidfunk/mkdocs-material
[peaceiris/mkdocs-material - Docker Hub]: https://hub.docker.com/r/peaceiris/mkdocs-material
[peaceiris/mkdocs-material-boilerplate - GitLab]: https://gitlab.com/peaceiris/mkdocs-material-boilerplate
[Demo site on GitHub Pages]: https://peaceiris.github.io/mkdocs-material-boilerplate/
[Demo site on GitLab Pages]: https://peaceiris.gitlab.io/mkdocs-material-boilerplate/
[Demo site on Netlify]: https://mkdocs-material.netlify.com/
[Demo site on Amplify Console]: https://master.d1ymzxwumyxuh1.amplifyapp.com/
[Personal access token]: https://github.com/settings/tokens
