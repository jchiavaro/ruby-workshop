require "sinatra"
require "../app"
require "rack/test"
require File.dirname(__FILE__) + '/../domain/user'
require File.dirname(__FILE__) + '/../app/user_mapper'
require "rspec/fire"

set :environment, :test

RSpec.configure do |config|
  config.include(RSpec::Fire)
end

RSpec::Fire.configure do |config|
  config.verify_constant_names = !!ENV["VERIFY_CONSTANT_NAMES"]
end

describe App do
  include Rack::Test::Methods

  def app
    App
  end

  describe "Get Homepage" do
    it "should render the home page" do
      get "/"
      last_response.status.should == 200
    end
  end

  describe "User" do
    let(:user_mapper){ fire_double("UserMapper") }
    let(:username) {"someuser@domain.com"}
    let(:password) { "super_secret" }
    let(:user) { stub }

    before do
      User.stub(:new).with( username, password).and_return(user)
    end

    it "should call the user mapper" do
      post "/register", {username: username, password: password }
      user_mapper.should_receive(:save).with(user)
    end
  end
end
