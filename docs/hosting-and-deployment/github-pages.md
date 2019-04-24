# Host on GitHub Pages

- [Demo site on GitHub Pages] (build & deploy with CircleCI)



## Build with `mkdocs gh-deploy`

### Deploy with `docker`

1. Create a [Personal access token]. (Check only `repo`)
2. Run the following scripts.

```
./task.sh -d  # mkdocs gh-deploy
# Enter github username
# Enter the Personal access token
```

### Deploy with `pipenv`

```
pipenv run gh-deploy  # mkdocs gh-deploy
```



## Build and deploy with CircleCI

- Set these **Environment Variables**.
    - `USER_NAME`: GitHub ID
    - `USER_EMAIL`: Email
    - `GITHUB_TOKEN`: [Personal access token]



## Build with GitHub Actions

TBW.



<!-- Internal References -->
<!-- External References -->
[Demo site on GitHub Pages]: https://peaceiris.github.io/mkdocs-material-boilerplate/
[Personal access token]: https://github.com/settings/tokens
