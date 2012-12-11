require "sinatra"
require "haml"
require File.dirname(__FILE__) + '/app/user_mapper'
require File.dirname(__FILE__) + '/domain/user'

class App < Sinatra::Base
  get "/" do
    haml :index
  end

  get "/add_user" do
    haml :add_user
  end

  post "/register" do
    p "como loco"
    @user = User.new( params[:username], params[:password])
    UserMapper.new.save(@user)
    haml :success
  end
end
