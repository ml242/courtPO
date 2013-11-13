  ActiveRecord::Base.logger = Logger.new( STDOUT )
  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "anagiraldo-w",
    :password => "",
    :database => "programming_db")
  ActiveRecord::Base.connection.close