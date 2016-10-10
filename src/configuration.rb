require 'yaml'
class Configuration
  attr_accessor :data_configuration
  def initialize()
    @data_configuration=YAML.load(File.open(File.join(File.dirname(__FILE__), 'configuration.yaml')))
  end
end

# a=Configuration.new
# p a.data_configuration[:apiPivotalTracker][:url]
