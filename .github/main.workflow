workflow "Main workflow" {
  on = "release"
  resolves = ["Build and deploy with MkDocs"]
}

action "Build and deploy with MkDocs" {
  uses = "./.github/mkdocs/"
  secrets = [
    "ACTIONS_DEPLOY_KEY"
  ]
}
