workflow "contributor-validator" {
  resolves = ["Contributor Validator"]
  on = "pull_request_review_comment"
}

workflow "pin issue based on label" {
  on = "issues"
  resolves = ["pin an issue"]
}

action "Contributor Validator" {
  uses = "bdougie/bdougie/contribution-validation@master"
  secrets = [
    "GITHUB_TOKEN",
  ]
}

action "pin an issue" {
  uses = "bdougie/issue-pin-by-label@master"
  secrets = [
    "GITHUB_TOKEN",
  ]
  env = {
    LABEL_NAME = "top5"
  }
}
