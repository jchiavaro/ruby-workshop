$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "app"))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "domain"))
require "sinatra"
require "haml"
require 'user_mapper'
require 'user'

class App < Sinatra::Base
 
  get "/" do
    haml :index
  end

  get "/add_user" do
    haml :add_user
  end

  post "/register" do
    @user = User.new( params[:username], params[:password])
    UserMapper.new.save(@user)
    haml :success
  end
end
