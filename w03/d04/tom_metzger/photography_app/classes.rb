require 'active_record'


helpers do
  def db_connect
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "fijimunkii",
      :password => "",
      :database => "wdstagram_db"
    )
  end

  def db_disconnect
    ActiveRecord::Base.connection.close
  end
end


class Photo < ActiveRecord::Base
end
