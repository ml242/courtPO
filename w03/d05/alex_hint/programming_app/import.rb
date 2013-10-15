require 'csv'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Hint",
  :password => "",
  :database => "programming_db"
)

class Programmer < ActiveRecord::Base
end


# CSV.foreach("path/to/file.csv") do |row|
#   # use row here...
# end

CSV.foreach("programmers.csv") do |row|
  Programmer.create!(
    :name => row[0],
    :twitter_username => row[1],
    :twitter_pic => row[2])
end

