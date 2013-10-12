    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "quincogdell",
      :password => "",
      :database => "wdinstagram_db"
      )
