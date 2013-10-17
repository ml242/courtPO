# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#ActiveRecord::Base.logger = Logger.new( STDOUT )


file = File.new("programmers.csv", "r")
file.each do |line|
  new_line = line.split(",")
  p1 = Programmer.new
  p1.name = new_line[0]
  p1.twitter_username = new_line[1]
  p1.twit_pic = new_line[2]
  p1.save
  puts "#{p1.name} saved!"
end
file.close
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
