# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

csv_file = "../programmers.csv"
of = File.open("#{csv_file}", "r")

of.readlines.each do |line|
  values = line.split(",")
  name, twit_username, twit_pic = values[0], values[1], values [2]
  Programmer.create({
    name: name, 
    picture_url: twit_pic, 
    twitter_username: twit_username
  })
end
