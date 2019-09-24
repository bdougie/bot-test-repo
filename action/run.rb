
require 'octokit'

NWO = ENV["GITHUB_REPOSITORY"]

client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
client.auto_paginate = true

open_issues = client.list_issues(NWO, { :labels => "available" })

open_issues.each do |issue|
  client.close_issue(NWO, issue.number)
end

print "-------------------------------------"
print client.organization_member?(ENV["GITHUB ACTOR"])
print "-------------------------------------"
