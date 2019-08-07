workflow "contributor-validator" {
  resolves = ["contributor validator"]
  on = "issues"
}

action "contributor validator" {
  uses = "bdougie/contributor-validator@master"
  secrets = [
    "GITHUB_TOKEN",
  ]
}
