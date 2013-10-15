require 'active_record'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Jaclyn",
  :password => "",
  :database => "programming_db"
)

class Programmer < ActiveRecord::Base

end
