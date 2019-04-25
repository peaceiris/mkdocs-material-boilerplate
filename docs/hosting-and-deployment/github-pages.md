# Host on GitHub Pages

- [Demo site on GitHub Pages] (build & deploy with GitHub Actions)



## Build and deploy with GitHub Actions

- [GitHub Actions for MkDocs and GitHub Pages - Build markdown documentation with Material for MkDocs and push to GitHub Pages with GitHub Actions](https://github.com/peaceiris/actions-mkdocs-gh-pages)



## Build and deploy with `mkdocs gh-deploy`

### pipenv

```
pipenv run gh-deploy

# OR
pipenv shell
mkdocs gh-deploy

# OR
pipenv shell
inv deploy
```

### Docker

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
