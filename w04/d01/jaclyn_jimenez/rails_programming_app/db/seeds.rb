# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#open file with read access
file = File.open("#{Rails.root}/db/programmers.csv", 'r')

# reads in each line of programmer details from programmers.csv
file.each do |line|
  #creates array of that line using csv
  programmer_array = line.chomp.split(',')
  added_name = programmer_array[0]
  added_username = programmer_array[1]
  added_pic = programmer_array[2]
  #creates programmer is created
  new_programmer = Programmer.new
  #set name, username and pic
  new_programmer.name = added_name
  new_programmer.twitter_username = added_username
  new_programmer.twitter_pic = added_pic
  #saves the new programmer to the table
  new_programmer.save
end
