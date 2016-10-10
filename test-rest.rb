require_relative 'src/project_request'
require 'rest-client'
  # response = RestClient.get 'https://www.pivotaltracker.com/services/v5/projects', {'X-TrackerToken' => 'd0d64d4c080992ac0bf9c873308024d3'}
  # body= JSON.parse(response.body.to_s)
  # p body
# p response.code

# response = ProjectRequest.getProjects("projects/",ProjectRequest.setConnection("PivotalTrackerAPI"))
# p response

 # response=RestClient.put("https://www.pivotaltracker.com/services/v5/projects/1889849",{"name"=>"testModify06"},{'X-TrackerToken' => 'd0d64d4c080992ac0bf9c873308024d3'})
# response=RestClient.get("https://www.pivotaltracker.com/services/v5/projects/934543",{'X-TrackerToken' => 'd0d64d4c080992ac0bf9c873308024d3'})
# p response.code


