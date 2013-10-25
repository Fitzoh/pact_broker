
# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pact_broker/version'

Gem::Specification.new do |gem|
  gem.name          = "pact_broker"
  gem.version       = PactBroker::VERSION
  gem.authors       = ["Bethany Skurrie"]
  gem.email         = ["bskurrie@dius.com.au"]
  gem.description   = %q{An server that stores and returns pact files generated by the pact gem. It enables head/prod cross testing of the consumer and provider projects.}
  gem.summary       = %q{See description}
  gem.homepage      = "https://github.com/bethesque/pact_broker.git"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license       = 'MIT'

  gem.add_runtime_dependency 'pact'
  gem.add_runtime_dependency 'httparty'
  gem.add_runtime_dependency 'json'
  gem.add_runtime_dependency 'grape'
  gem.add_runtime_dependency 'grape-entity'
  gem.add_runtime_dependency 'sequel'
  gem.add_runtime_dependency 'sqlite3'

  gem.add_development_dependency 'rake', '~> 10.0.3'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'fakefs', '~> 0.4'
  gem.add_development_dependency 'rspec-fire'
  gem.add_development_dependency 'debugger'
  gem.add_development_dependency 'ci_reporter'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'shotgun'
end
