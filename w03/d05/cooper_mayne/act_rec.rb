require 'active_record'
ActiveRecord::Base.logger = Logger.new( STDOUT )
 
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "postgres",
  :password => "home3232",
  :database => "programming_db"
)
