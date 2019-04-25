# Host on GitHub Pages

- [Demo site on GitHub Pages] (build & deploy with GitHub Actions)



## Build and deploy with GitHub Actions

### (1) Add deploy Key

1. Generate deploy key `ssh-keygen -t rsa -f mkdocs -q -N ""`
2. Go to "Settings > Deploy Keys" of repository.
3. Add your public key within "Allow write access" option.
4. Go to "Settings > Secrets" of repository.
5. Add your private deploy key as `ACTIONS_DEPLOY_KEY`

### (2) Push `.github`

```
.github
├── main.workflow
└── mkdocs
    ├── Dockerfile
    └── entrypoint.sh
```

### (3) Update releases

Triggered when a release is `published`, `unpublished`, `created`, `edited`, `deleted`, or `prereleased`.



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
