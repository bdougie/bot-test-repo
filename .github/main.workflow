workflow "contributor-validator" {
  resolves = ["contributor validator"]
  on = "pull_request"
}

action "contributor validator" {
  uses = "bdougie/airtable-record-creator@master"
  secrets = [
    "GITHUB_TOKEN",
  ]
}
