workflow "MkDocs workflow" {
  on = "push"
  resolves = ["Build and deploy"]
}

action "master" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Build and deploy" {
  needs = "master"
  uses = "./.github/mkdocs/"
  secrets = [
    "ACTIONS_DEPLOY_KEY"
  ]
}
