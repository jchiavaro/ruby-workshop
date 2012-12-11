require "spec_helper"
require "user"

describe User do

  describe "save a new user" do
    let(:username){"Matias"}
    let(:password){"1234"}

    it "should save a new user" do
      user = User.create( :username => username, :password => password )
      another_user =  User.where({:username => username})
      user.should_not be_nil
    end
  end
end
