workflow "contributor-validator" {
  resolves = ["contributor validator"]
  on = "pull_request"
}

action "contributor validator" {
  uses = "bdougie/contributor-validator@master"
  secrets = [
    "GITHUB_TOKEN",
  ]
}
