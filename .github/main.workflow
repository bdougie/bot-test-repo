workflow "contributor-validator" {
  on = "pull_request"
  resolves = ["Contributor Validator"]
}

 action "Contributor Validator" {
  uses = "bdougie/contributor-validator@master"
  secrets = [
    "GITHUB_TOKEN"  
  ]
}
