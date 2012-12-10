require "capybara"
require "capybara/cucumber"
require "rspec"
require File.dirname(__FILE__) + '/../../app'

Capybara.app = App

class AppWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  AppWorld.new
end
