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
end
