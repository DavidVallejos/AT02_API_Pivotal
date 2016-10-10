require_relative '../../src/project_request'
require_relative '../../src/configuration'
require 'rest-client'
require 'json'

conf=Configuration.new

Before('@create_project_pivotal') do
  url=conf.data_configuration[:url]+"projects/"
  @response = RestClient.post(url, {"name"=>"testProject"}, conf.data_configuration[:key]=>conf.data_configuration[:token])
  body=JSON.parse(@response.body)
  @id=body["id"]
end

After('@delete_project_pivotal') do
  url=conf.data_configuration[:url]+"project/"+@id
  @response=RestClient.delete(url, conf.data_configuration[:key] => conf.data_configuration[:token])
end