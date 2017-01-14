# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'circleci_deployment_notifier/version'

Gem::Specification.new do |spec|
  spec.name          = "circleci_deployment_notifier"
  spec.version       = CircleciDeploymentNotifier::VERSION
  spec.authors       = ["Robin Daugherty"]
  spec.email         = ["robin@robindaugherty.net"]

  spec.summary       = %q{Sends deployment notifications based on deployments that occur on CircleCI.}
  spec.homepage      = "https://github.com/RobinDaugherty/circleci_deployment_notifier"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.3.2"
  spec.add_dependency "slack-notifier", "~> 2.0.0"
  spec.add_dependency "slop", "~> 4.4.1"
end
