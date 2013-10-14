require 'active_record'


ActiveRecord::Base.logger = Logger.new( STDOUT )
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "KS",
  :password => "",
  :database => "wdinstagram_db"
)


class Programmer < ActiveRecord::Base
end


ActiveRecord::Base.connection.close
