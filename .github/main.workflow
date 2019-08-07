workflow "contributor-validator" {
  resolves = ["Contributor Validator"]
  on = "pull_request_review_comment"
}

action "Contributor Validator" {
  uses = "bdougie/bdougie/contribution-validation@master"
  secrets = [
    "GITHUB_TOKEN",
  ]
}
