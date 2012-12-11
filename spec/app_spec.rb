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
    it "should save the user" do
      post "/register", {username: username, password: password }
      last_response.body.should =~ /User #{username} created successfully/
    end
  end
end
