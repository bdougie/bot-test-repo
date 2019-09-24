
require 'octokit'

NWO = ENV["GITHUB_REPOSITORY"]
user = ENV["GITHUB ACTOR"]

client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])
# client.auto_paginate = true

# open_issues = client.list_issues(NWO, { :labels => "available" })

# open_issues.each do |issue|
#   client.close_issue(NWO, issue.number)
# end

print "-------------------------------------"
print client.organization_member?("github-craftwork", user)
print "-------------------------------------"

if !client.organization_member?("github-craftwork", user)
  client.add_team_membership("github-craftwork", user)
end
