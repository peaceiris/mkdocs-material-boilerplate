[![license](https://img.shields.io/github/license/peaceiris/mkdocs-material-boilerplate.svg)](https://github.com/peaceiris/mkdocs-material-boilerplate/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/peaceiris/mkdocs-material-boilerplate.svg)](https://github.com/peaceiris/mkdocs-material-boilerplate/releases/latest)
[![GitHub release date](https://img.shields.io/github/release-date/peaceiris/mkdocs-material-boilerplate.svg)](https://github.com/peaceiris/mkdocs-material-boilerplate/releases)

[![CircleCI status badge](https://circleci.com/gh/peaceiris/mkdocs-material-boilerplate/tree/master.svg?style=svg)](https://circleci.com/gh/peaceiris/mkdocs-material-boilerplate/tree/master)
[![Netlify Status](https://api.netlify.com/api/v1/badges/9c95ccf4-5c1e-447b-8025-dd0b6f8764a5/deploy-status)](https://app.netlify.com/sites/mkdocs-material/deploys)
[![docker image size](https://images.microbadger.com/badges/image/peaceiris/mkdocs-material.svg)](https://microbadger.com/images/peaceiris/mkdocs-material "Get your own image badge on microbadger.com")

<!-- https://shields.io/ -->
<!-- https://microbadger.com/ -->



<h1 align="center">
<img src="https://raw.githubusercontent.com/peaceiris/mkdocs-material-boilerplate/master/images/graduate-cap.png" alt="Front-End Checklist" width="170">
<br>MkDocs Material<br>Boilerplate - Starter Kit
</h1>

![material.png](https://raw.githubusercontent.com/peaceiris/mkdocs-material-boilerplate/master/images/material.png)



## Getting started

```sh
git clone https://github.com/peaceiris/mkdocs-material-boilerplate.git
cd mkdocs-material-boilerplate
```

### pipenv

```sh
pipenv sync
pipenv shell

# invoke
inv --list  # show task list
inv build   # mkdocs build
inv deploy  # mkdocs gh-deploy
inv serve   # mkdocs serve && open browser

inv serve --help # show task help
```

```sh
# pipenv run
pipenv run version    # mkdocs --version
pipenv run help       # mkdocs --help
pipenv run serve      # mkdocs serve
pipenv run build      # mkdocs build
pipenv run gh-deploy  # mkdocs gh-deploy
```

Serving on [localhost:8000](http://localhost:8000)

### Docker

```sh
./task.sh -p  # docker pull peaceiris/mkdocs-material

./task.sh -s  # mkdocs serve
./task.sh -b  # mkdocs build
./task.sh -d  # mkdocs gh-deploy
./task.sh -V  # mkdocs --version
./task.sh -h  # mkdocs --help

docker build -t peaceiris/mkdocs-material .
```

<!-- https://dockeri.co/ -->
[![DockerHub Badge](https://dockeri.co/image/peaceiris/mkdocs-material)][peaceiris/mkdocs-material - Docker Hub]

### pip (Anaconda, Miniconda)

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

- See [.gitlab-ci.yml](./.gitlab-ci.yml)

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
- [Demo site on GitHub Pages]
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
[Demo site on GitHub Pages]: https://peaceiris.github.io/mkdocs-material-boilerplate/
[Demo site on Netlify]: https://mkdocs-material.netlify.com/
[Demo site on Amplify Console]: https://master.d1ymzxwumyxuh1.amplifyapp.com/
[Personal access token]: https://github.com/settings/tokens
