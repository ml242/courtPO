require 'pry'
require 'active_record'
require 'pg'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "willsmith",
  :password => "",
  :database => "programming_db"
)
class Programmer < ActiveRecord::Base

end
