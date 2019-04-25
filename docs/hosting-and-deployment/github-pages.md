# Host on GitHub Pages

- [Demo site on GitHub Pages] (build & deploy with GitHub Actions)



## Build with GitHub Actions

```
.github
├── main.workflow
└── mkdocs
    ├── Dockerfile
    └── entrypoint.sh
```

When you push `.github` to GitHub, GitHub Actions automatically enables.



## Build with `mkdocs gh-deploy`

### Use `pipenv`

```
pipenv run gh-deploy

# OR
pipenv shell
mkdocs gh-deploy

# OR
pipenv shell
inv deploy
```

### Use `docker`

1. Create a [Personal access token]. (Check only `repo`)
2. Run the following scripts.

```
./task.sh -d  # mkdocs gh-deploy
# Enter github username
# Enter the Personal access token
```



## Build and deploy with CircleCI

- Set these **Environment Variables**.
    - `USER_NAME`: GitHub ID
    - `USER_EMAIL`: Email
    - `GITHUB_TOKEN`: [Personal access token]



<!-- Internal References -->
<!-- External References -->
[Demo site on GitHub Pages]: https://peaceiris.github.io/mkdocs-material-boilerplate/
[Personal access token]: https://github.com/settings/tokens
