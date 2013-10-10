require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Jaclyn",
  :password => "",
  :database => "entries_db"
)

class Entry < ActiveRecord::Base

end


binding.pry
