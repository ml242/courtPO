require 'active_record'
require 'csv'
require 'pry'


ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "KS",
  :password => "",
  :database => "programming_db"
)


class Programmer < ActiveRecord::Base
end


# CSV.open('programmers.csv', 'r').each do |person|
#   p person.inspect
# end

programmers = CSV.parse(File.read('programmers.csv'))

programmers.each do |person|

  name = person[0]
  twitter_username = person [1]
  twitter_pic = person[2]
Programmer.create( { :name => name, :twitter_pic => twitter_pic, :twitter_username => twitter_username } )
end

ActiveRecord::Base.connection.close



