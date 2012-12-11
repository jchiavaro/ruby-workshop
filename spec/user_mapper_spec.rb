require "spec_helper"
require "user"

describe UserMapper do

  describe "#save" do
    let(:user) { User.new( "Matias", "12344") }
    let(:mapper){ UserMapper.new }
    let(:id) { stub } 

    it "should save a new user" do
      mapper.save(user).should_not be_nil
    end
  end
end
