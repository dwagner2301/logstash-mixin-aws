Gem::Specification.new do |s|
  s.name            = 'logstash-mixin-aws'
  s.version         = '0.1.7'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "AWS mixins to provide a unified interface for Amazon Webservice"
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Elasticsearch"]
  s.email           = 'info@elasticsearch.com'
  s.homepage        = "http://www.elasticsearch.org/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)+::Dir.glob('vendor/*')

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'aws-sdk', '~> 1.61.0'
  s.add_development_dependency 'logstash-devutils'
end

