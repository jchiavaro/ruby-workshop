require "spec_helper"
require "user"

describe User do

  before do
    User.delete_all
  end

  describe "#create" do
    let(:username){"Matias"}
    let(:password){"1234"}
    it "should create a new user" do
      user = User.create( :username => username, :password => password )
      user.should_not be_nil
    end
  end

  describe "#all" do
    it "should get all users" do
      user1 = User.create(username: "user1")
      user2 = User.create(username: "user2")
      users_from_db = User.all
      users_from_db.should have(2).elements
    end
  end
end
