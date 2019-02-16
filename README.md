<details>
<summary>UNDER DEVELOPMENT</summary>

<div align="center">
<img src="https://raw.githubusercontent.com/peaceiris/mkdocs-material-boilerplate/master/graduate-cap.png" alt="mkdocs material Boilerplate (Starter Kit) icon" width="170px">
</div>

<h1 align="center">MkDocs Material Boilerplate (Starter Kit)</h1>

![material.png](https://raw.githubusercontent.com/peaceiris/mkdocs-material-boilerplate/master/material.png)


## Table of Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Status badges](#status-badges)
- [Getting started](#getting-started)
  - [Docker](#docker)
  - [Anaconda and Miniconda](#anaconda-and-miniconda)
  - [pipenv](#pipenv)
- [Host on GitHub Pages](#host-on-github-pages)
  - [Build with `mkdocs gh-deploy`](#build-with-mkdocs-gh-deploy)
  - [Build with CircleCI](#build-with-circleci)
  - [Build with GitHub Actions](#build-with-github-actions)
- [Host on GitLab Pages](#host-on-gitlab-pages)
- [Host on Netlify](#host-on-netlify)
- [Host on AWS Amplify Console](#host-on-aws-amplify-console)
- [Links](#links)
- [License](#license)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## Status badges

<details>
<summary>Click to expand</summary>

<!-- https://shields.io/ -->
<!-- https://microbadger.com/ -->

- ![license](https://img.shields.io/github/license/peaceiris/mkdocs-material-boilerplate.svg)
- GitHub
    - ![release](https://img.shields.io/github/release/peaceiris/mkdocs-material-boilerplate.svg)
    - ![github release date](https://img.shields.io/github/release-date/peaceiris/mkdocs-material-boilerplate.svg)
    - ![GitHub All Releases](https://img.shields.io/github/downloads/peaceiris/mkdocs-material-boilerplate/total.svg)
    - [![Dependabot Status](https://api.dependabot.com/badges/status?host=github&repo=peaceiris/mkdocs-material-boilerplate)](https://dependabot.com)
- GitLab
    - ![Gitlab pipeline status](https://img.shields.io/gitlab/pipeline/peaceiris/mkdocs-material-boilerplate.svg?style=flat)
-  Netlify
    - [![Deploy status](https://img.shields.io/badge/dynamic/json.svg?url=https://api.netlify.com/api/v1/sites/mkdocs-material.netlify.com/deploys&label=deploy&query=$[0].state&colorB=brightgreen)](https://app.netlify.com/sites/mkdocs-material/deploys)
- Docker
    - ![docker pulls](https://img.shields.io/docker/pulls/peaceiris/mkdocs-material.svg)
    - ![docker stars](https://img.shields.io/docker/stars/peaceiris/mkdocs-material.svg)
    - [![docker image size](https://images.microbadger.com/badges/image/peaceiris/mkdocs-material.svg)](https://microbadger.com/images/peaceiris/mkdocs-material "Get your own image badge on microbadger.com")

</details>


## Getting started

### Docker

- [peaceiris/mkdocs-material - Docker Hub]

```
# Serve
./serve-docker.sh
# Build
./build-docker.sh
```

Serving on [localhost:8000](http://localhost:8000)

### Anaconda and Miniconda

```
conda env create --file conda.yaml
conda activate mkdocs
mkdocs --version
# OUTPUT: mkdocs, version 1.0.4 from /path/to/mkdocs (Python 3.7)
```

### pipenv

- [Issue #1](https://github.com/peaceiris/mkdocs-material-boilerplate/issues/1)

```
pipenv install -r requirements.txt
```


## Host on GitHub Pages

- [Demo site on GitHub Pages]

### Build with `mkdocs gh-deploy`

via `ssh`

```
./gh-deploy-docker.sh
# mkdocs gh-deploy
```

via `https`

- (1) Create a [Personal access token](https://github.com/settings/tokens)
  - Check only `public_repo`
- (2) Run the following scripts
    - If you clone via `https`, enter your `GitHub ID` and `Personal access token`

### Build with CircleCI

### Build with GitHub Actions


## Host on GitLab Pages

- [peaceiris/mkdocs-material-boilerplate - GitLab]
- [Demo site on GitLab Pages]


## Host on Netlify

- [Demo site on Netlify]

| Repo | Button |
|---|---|
| Deploy to Netlify from GitHub | [![Deploy to Netlify from GitHub](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/peaceiris/mkdocs-material-boilerplate) |
| Deploy to Netlify from GitLab | [![Deploy to Netlify from GitLab](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://gitlab.com/peaceiris/mkdocs-material-boilerplate) |


## Host on AWS Amplify Console

- [Demo site on Amplify Console]
    - ID: `github`
    - Password: `OhGhiNu5On5Ohzuva6ma`

You can use **Password protection**

Set TTL to `600 sec`


## Links

- [mkdocs/mkdocs: Project documentation with Markdown - GitHub]
- [peaceiris/mkdocs-material - Docker Hub]
- [peaceiris/mkdocs-material-boilerplate - GitLab]
- [Demo site on GitHub Pages]
- [Demo site on GitLab Pages]
- [Demo site on Netlify]
- [Demo site on Amplify Console]


## License

- [MIT License](https://github.com/peaceiris/mkdocs-material-boilerplate/blob/master/LICENSE)
- [The graduate cap icon](https://www.flaticon.com/free-icon/graduate-cap_62627) made by [Freepik](https://www.freepik.com/) from [www.flaticon.com](https://www.flaticon.com/) is licensed by [CC 3.0 BY](http://creativecommons.org/licenses/by/3.0/)


<div align="right">
<a href="#table-of-contents">Back to TOC ☝️</a>
</div>


<!-- Internal References -->
<!-- External References -->
[mkdocs/mkdocs: Project documentation with Markdown - GitHub]: https://github.com/mkdocs/mkdocs/
[peaceiris/mkdocs-material - Docker Hub]: https://hub.docker.com/r/peaceiris/mkdocs-material
[peaceiris/mkdocs-material-boilerplate - GitLab]: https://gitlab.com/peaceiris/mkdocs-material-boilerplate
[Demo site on GitHub Pages]: https://peaceiris.github.io/mkdocs-material-boilerplate/
[Demo site on GitLab Pages]: https://peaceiris.gitlab.io/mkdocs-material-boilerplate/
[Demo site on Netlify]: https://mkdocs-material.netlify.com/
[Demo site on Amplify Console]: https://master.d1ymzxwumyxuh1.amplifyapp.com/

</details>
