$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),"..", "app"))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..","domain"))
require "sinatra"
require_relative "../app"
require "rack/test"

set :environment, :test

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
   App
end