  ActiveRecord::Base.logger = Logger.new( STDOUT )

  ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Ducky",
  :password => "",
  :database => "instagram_db"
  )