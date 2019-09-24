
require 'octokit'

NWO = ENV["GITHUB_REPOSITORY"]
ISSUE_TEMPLATE = File.read(File.join(File.dirname(__FILE__), "template.md"))

client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
client.auto_paginate = true

open_issues = client.list_issues(NWO, { :labels => "weekly-meeting" })

open_issues.each do |issue|
  client.close_issue(NWO, issue.number)
end

client.create_issue(NWO, "Weekly Meeting" , ISSUE_TEMPLATE, { :labels => "weekly-meeting" })
