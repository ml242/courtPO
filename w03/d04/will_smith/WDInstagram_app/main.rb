require 'active_record'
require 'pry'

# 1. Start by setting up your database using SQL: -->DONE
#   * Plan your schema --> DONE
#   * Create your database --> DONE
#   * Test your database using psql --> DONE


ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "willsmith",
  :password => "",
  :database => "pics_db"
)

class Users < ActiveRecord::Base
end

class Pics < ActiveRecord::Base
end

binding.pry
