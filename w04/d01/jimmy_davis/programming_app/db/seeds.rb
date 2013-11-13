# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

file = File.open("#{Rails.root}/db/programmers.csv", 'r')

file.each do |line|
  programmer_array = line.split(',')
  p1 = Programmer.new
  p1.name = programmer_array[0]
  p1.twitter_username = programmer_array[1]
  p1.twitter_pic = programmer_array[2]
  p1.save
end

