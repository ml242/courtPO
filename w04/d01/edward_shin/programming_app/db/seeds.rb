# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
programmers_array = CSV.read("/Users/EddieShin/ga_wdi/hw/w03/d05/edward_shin/programming_app/programmers.csv")

i = 0
while i  < programmers_array.count
  programmer_info = programmers_array[i]
  name = programmer_info[0]
  twitter_pic = programmer_info[2]
  twitter_username = programmer_info[1]
  p1 = Programmer.new
  p1.name = name
  p1.twitter_username = twitter_username
  p1.twitter_pic = twitter_pic
  p1.save
  i = i + 1
end
