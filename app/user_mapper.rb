$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..","domain"))
require "user"
require "pstore"

class UserMapper
  
  
  def save(user)
    @db = PStore.new("store")
    @db.transaction do 
      @db[:users] = user 
      @db.commit
    end
  end
end
