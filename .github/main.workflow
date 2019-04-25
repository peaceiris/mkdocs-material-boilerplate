workflow "MkDocs workflow" {
  on = "push"
  resolves = ["Build and deploy"]
}

action "master" {
  uses = "actions/bin/filter@master"
  args = "branch action-test"
}

action "Build and deploy" {
  needs = "master"
  uses = "./.github/mkdocs/"
  secrets = [
    "GITHUB_TOKEN"
  ]
}
