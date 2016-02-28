Gem::Specification.new do |s|
  s.name = 'logstash-filter-dynamodb'
  s.version = '0.0.5'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This plugin unmarshals a DynamoDB stream message and populates the corresponding ElasticSearch fields so the get indexed properly "
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Mantika"]
  s.email = 'info@mantika.ca'
  s.homepage = "https://www.mantika.ca"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 2.0.0", "< 3.0.0"
  s.add_development_dependency 'logstash-devutils'
end
