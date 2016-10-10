require_relative 'configuration.rb'
require 'rest-client'
require 'json'

class ProjectRequest


  def self.setConnection(clientAPI)
    @conf=Configuration.new
    return @conf.data_configuration[clientAPI]
  end

  def self.getProjects(url, dataConfiguration)
    finalUrl=dataConfiguration[:url]+url
    response=RestClient.get(finalUrl, dataConfiguration[:key] => dataConfiguration[:token])
    return response.code
  end

  def self.createProject(url, json, dataConfiguration)
    finalUrl=dataConfiguration[:url]+url
    response = RestClient.post(finalUrl, json, dataConfiguration[:key]=>dataConfiguration[:token])
    @body=JSON.parse(response.body)
    @id=@body["id"]
    p @id
    return response.code
  end

  def self.updateProjectById(url,json,dataConfiguration)
    finalUrl=dataConfiguration[:url]+url+@id.to_s
    p finalUrl
    response=RestClient.put(finalUrl,json,dataConfiguration[:key]=>dataConfiguration[:token])
    return response.code
  end

  def self.getProjectById(url, dataConfiguration)
    finalUrl=dataConfiguration[:url]+url+@id.to_s
    response=RestClient.get(finalUrl, dataConfiguration[:key] => dataConfiguration[:token])
    return response.code
  end

  def self.deleteProject(url, dataConfiguration)
    finalUrl=dataConfiguration[:url]+url+@id.to_s
    response=RestClient.delete(finalUrl, dataConfiguration[:key] => dataConfiguration[:token])
    return response.code
  end

end

# a=ProjectRequest.setConnection(" PivotalTrackerAPI ")
# p a
# ProjectRequest.getProjects(" projects/",a)


