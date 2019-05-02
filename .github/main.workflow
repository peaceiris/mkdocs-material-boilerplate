workflow "MkDocs workflow" {
  on = "push"
  resolves = ["Build and deploy"]
}

action "branch-filter" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Build and deploy" {
  needs = ["branch-filter"]
  uses = "peaceiris/actions-mkdocs-gh-pages@v1.1.3"
  env = {
    MKDOCS_BUILD_OPTIONS = "--config-file ./mkdocs-sample.yml"
  }
  secrets = ["ACTIONS_DEPLOY_KEY"]
}
