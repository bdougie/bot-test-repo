workflow "contributor-validator" {
  on = "pull_request"
  resolves = ["contributor validator"]
}

 action "contributor validator" {
  uses = "bdougie/contributor-validator@master"
  secrets = [
    "GITHUB_TOKEN"  
  ]
}
