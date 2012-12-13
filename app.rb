$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "app"))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "domain"))
require "sinatra"
require "haml"
require 'user_mapper'
require 'user'
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :dbfile  => ":memory:",
  :database => "user.db"
)

if !ActiveRecord::Base.connection.table_exists? 'users'

  ActiveRecord::Schema.define do
    create_table :users do |table|
      table.column :id, :integer
      table.column :username, :string
      table.column :password, :string
    end
  end
end

class App < Sinatra::Base
  get "/" do
    haml :index
  end

  get "/add_user" do
    haml :add_user
  end

  post "/register" do
    @user = User.create( username: params[:username], password: params[:password])
    haml :success
  end

  get "/view_users" do
    @users = User.all
    haml :view_users
  end
end
