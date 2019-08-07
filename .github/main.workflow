workflow "Contributor Validator" {
  resolves = ["contributor-validator"]
  on = "issues"
}

workflow "pin issue based on label" {
  resolves = ["pin an issue"]
  on = "issues"
}

action "contributor-validator" {
  uses = "bdougie/contribution-validation2@master"
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
