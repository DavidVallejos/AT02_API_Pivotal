require_relative '../../src/project_request'

Given(/^I have a set of connection to ([^"]*) API service$/) do |arg|
  @data = ProjectRequest.setConnection(arg)
end

When(/^I send Get request to ([^"]*) endpoint$/) do |arg|
  @response = ProjectRequest.getProjects(arg, @data)
end

Then(/^I expect Status code ([^"]*) for the SmokeTest$/) do |arg|
  expect(@response.to_s).to eql(arg.to_s)
end

When(/^I send Post request to ([^"]*) endpoint with the json$/) do |arg, json|
  @response=ProjectRequest.createProject(arg,JSON.parse(json),@data)
end

Then(/^I expect Status code (\d+) from projects post$/) do |arg|
  expect(@response.to_s).to eql(arg.to_s)

end

When(/^I send Put request to "([^"]*)" endpoint with the json$/) do |arg, text|
  @response=ProjectRequest.updateProjectById(arg,JSON.parse(text),@data)
end

Then(/^I expect Status code "([^"]*)" from projects put$/) do |arg|
  expect(@response.to_s).to eql(arg.to_s)
end

When(/^I send Get by id request to "([^"]*)" endpoint$/) do |arg|
  @response=ProjectRequest.getProjectById(arg,@data)
end

Then(/^I expect Status code "([^"]*)" from projects Get by Id$/) do |arg|
  expect(@response.to_s).to eql(arg.to_s)
end

When(/^I send Delete request to "([^"]*)" endpoint$/) do |arg|
  @response=ProjectRequest.deleteProject(arg,@data)
end

Then(/^I expect Status code "([^"]*)" from projects Delete$/) do |arg|
  expect(@response.to_s).to eql(arg.to_s)
end