require "pry"
require 'active_record'
require 'pg'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "eriese",
  :password => "",
  :database => "programming_db"
)

class Programmer < ActiveRecord::Base
end

file = File.new("programmers.csv", "r")
file.each do |line|
  new_line = line.split(",")
  p1 = Programmer.new
  p1.name = new_line[0]
  p1.twitter_username = new_line[1]
  p1.twitter_pic = new_line[2]
  p1.save
  puts "#{p1.name} saved!"
end
file.close
