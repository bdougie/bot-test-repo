workflow "contributor-validator" {
  resolves = ["Contributor Validator"]
  on = "issues"
}

workflow "pin issue based on label" {
  resolves = ["pin an issue"]
  on = "issues"
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
