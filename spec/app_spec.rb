require "spec_helper"

describe App do

  describe "GET /" do
    it "should render the home page" do
      get "/"
      last_response.body.should =~/home site/
    end
  end
  describe "GET /add_user" do
    it "should render the add user page" do
      get "/add_user"
      last_response.body.should =~/register new user/
    end
  end

  describe "POST /register" do
    let(:username) {"someuser@domain.com"}
    let(:password) { "super_secret" }
    it "should register the user" do
      post "/register", {username: username, password: password }
      user = double("user")
      User.stub(:create){ user }
      user.should_not be_nil
      last_response.status.should == 200
    end
  end
end
