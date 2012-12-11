class User
  attr_accessor :username, :password, :id
  def initialize(username, password)
    @username = username
    @password = password
  end
end
