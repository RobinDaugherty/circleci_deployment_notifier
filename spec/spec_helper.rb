require 'codacy-coverage'
Codacy::Reporter.start

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "circleci_deployment_notifier"

require 'webmock/rspec'
WebMock.disable_net_connect! allow: 'api.codacy.com'
