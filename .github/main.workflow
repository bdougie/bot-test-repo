workflow "contributor-validator" {
  on = "pull_request"
  resolves = ["Contributor Validator"]
}

action "Contributor Validator" {
  uses = "bdougie/bdougie/contribution-validation@master"
  secrets = [
    "GITHUB_TOKEN"  
  ]
}
