ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'rack/test'
require 'rspec/expectations'
require 'webrat'
Webrat.configure do |config|
    config.mode = :sinatra
end

World do
    Webrat::SinatraSession.new
end
