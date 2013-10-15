require 'active_record'
require 'csv'
require 'pry'
require_relative 'programmers.rb'


ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "joshoynick",
  :password => "",
  :database => "programming_db"
)

# p "Enter the csv file name"
# file = gets.downcase.chomp!

programmers = CSV.parse(File.read('programmers.csv'))
programmers.each do |person|
  name = person[0]
  twitter_username = person[1]
  twitter_pic = person[2]
Programmer.create( { :name => name, :twitter_pic => twitter_pic, :twitter_username => twitter_username } )
end

ActiveRecord::Base.connection.close
