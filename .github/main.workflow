workflow "contributor-validator" {
  resolves = ["contributor validator"]
  on = "issues"
}

action "contributor validator" {
  uses = "bdougie/airtable-record-creator@master"
  secrets = [
    "GITHUB_TOKEN",
  ]
}
