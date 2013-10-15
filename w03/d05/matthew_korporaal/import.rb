require 'pg'
require 'active_record'
require_relative 'programmer'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "MTK",
  :password => "",
  :database => "programming_db"
)

Programmer.delete_all

puts "Enter CSV file to open: "
filename = gets.chomp
file = File.open(filename, 'r')

file.each do |entry|
  user = entry.chomp.split(",")
  p1 = Programmer.create
  p1.name = user[0]
  p1.handle = user[1]
  p1.twitter_pic = user[2]
  p1.save
end
file.close
