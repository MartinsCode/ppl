require 'simplecov'
require "fakefs/safe"
require "pathname"

SimpleCov.start

bin_file = Pathname.new(__FILE__).realpath
$:.unshift File.expand_path("../../lib", bin_file)

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.syntax = [:should, :expect]
  end
  config.mock_with :rspec do |mocks|
    mocks.syntax = [:should, :receive]
  end
end

require "ppl"
