require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "JC",
  :password => "",
  :database => "instagram_db"
)

class Entry < ActiveRecord::Base
end

require 'active_record'
