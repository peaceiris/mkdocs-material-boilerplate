# MkDocs Material Boilerplate (Starter Kit)

![material.png](https://raw.githubusercontent.com/peaceiris/mkdocs-material-boilerplate/master/material.png)


## Table of Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Status badges](#status-badges)
- [Getting started](#getting-started)
  - [Docker](#docker)
  - [Anaconda and Miniconda](#anaconda-and-miniconda)
- [Host on GitHub Pages](#host-on-github-pages)
- [Host on Netlify](#host-on-netlify)
- [Links](#links)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## Status badges

<!-- https://shields.io/ -->
![release](https://img.shields.io/github/release/peaceiris/mkdocs-material-boilerplate.svg)
![github release date](https://img.shields.io/github/release-date/peaceiris/mkdocs-material-boilerplate.svg)
![github last commit](https://img.shields.io/github/last-commit/peaceiris/mkdocs-material-boilerplate.svg)

![license](https://img.shields.io/github/license/peaceiris/mkdocs-material-boilerplate.svg)
![GitHub All Releases](https://img.shields.io/github/downloads/peaceiris/mkdocs-material-boilerplate/total.svg)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/peaceiris/mkdocs-material-boilerplate.svg)
![GitHub repo size in bytes](https://img.shields.io/github/repo-size/peaceiris/mkdocs-material-boilerplate.svg)

![docker pulls](https://img.shields.io/docker/pulls/peaceiris/mkdocs-material.svg)
![docker stars](https://img.shields.io/docker/stars/peaceiris/mkdocs-material.svg)
[![docker image size](https://images.microbadger.com/badges/image/peaceiris/mkdocs-material.svg)](https://microbadger.com/images/peaceiris/mkdocs-material "Get your own image badge on microbadger.com")
<!-- https://microbadger.com/ -->


## Getting started

### Docker

- [peaceiris/mkdocs-material - Docker Hub](https://hub.docker.com/r/peaceiris/mkdocs-material)

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


## Host on GitHub Pages

- (1) Create a [Personal access token](https://github.com/settings/tokens)
  - Check only `public_repo`
- (2) Run the following scripts
    - Only the first time, enter your `GitHub ID` and `Personal access token`

```
./gh-deploy-docker.sh
# mkdocs gh-deploy
```


## Host on Netlify




## Links

- [mkdocs/mkdocs: Project documentation with Markdown - GitHub](https://github.com/mkdocs/mkdocs/)


[↑  Back to TOC]


<!-- Internal References -->
[↑  Back to TOC]: #table-of-contents
<!-- External References -->
