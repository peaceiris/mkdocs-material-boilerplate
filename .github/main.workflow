workflow "Main workflow" {
  on = "push"
  resolves = ["Build and deploy with MkDocs"]
}

action "Build and deploy with MkDocs" {
  uses = "./.github/mkdocs/"
  secrets = [
    "ACTIONS_DEPLOY_KEY"
  ]
}
