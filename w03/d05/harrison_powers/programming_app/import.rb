require 'pry'
require 'pg'
require 'active_record'
require_relative 'programmer'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "fijimunkii",
  :password => "",
  :database => "programming_db"
)

puts "Please direct me to the Programmers CSV file so I can process it into the database."
location = gets.chomp

file = File.open(location, 'r')

csv_array = file.map do |line|
  line.chomp.split(",")
end

csv_array.map! do |line|
  line = {
    :name => line[0],
    :twitter_username => line[1],
    :twitter_pic => line[2]
  }
end

binding.pry
