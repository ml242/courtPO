require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jamesmdavis5",
  :password => "",
  :database => "wdinstagram_db"
)

class Entry < ActiveRecord::Base

end

entry = Entry.create(author: author, photo_url: photo_url, date_taken: date_taken)

ActiveRecord::Base.connection.close
