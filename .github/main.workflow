workflow "MkDocs workflow" {
  on = "push"
  resolves = ["deploy"]
}

action "branch-filter" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "is-not-branch-deleted" {
  uses = "actions/bin/filter@master"
  args = "not deleted"
}

action "pipenv-sync" {
  needs = ["branch-filter", "is-not-branch-deleted"]
  uses = "peaceiris/actions-pipenv@3.6"
  args = "sync"
}

action "mkdocs-build" {
  needs = ["pipenv-sync"]
  uses = "peaceiris/actions-pipenv@3.6"
  args = ["run", "mkdocs", "build", "--config-file", "./mkdocs-sample.yml"]
}

action "deploy" {
  needs = ["mkdocs-build"]
  uses = "peaceiris/actions-gh-pages@v1.0.0"
  env = {
    PUBLISH_DIR = "./site"
    PUBLISH_BRANCH = "gh-pages"
  }
  secrets = ["ACTIONS_DEPLOY_KEY"]
}
