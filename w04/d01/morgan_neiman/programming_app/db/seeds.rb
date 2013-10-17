# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

programmers_file = File.open('programmers.csv', 'r')

programmers_file.each_line do |line|
 programmer_info_array = line.split(',').to_a
 p1 = Person.new
 p1.name = programmer_info_array[0]
 p1.twitter_pic = programmer_info_array[2]
 p1.twitter_username = programmer_info_array[1]
 p1.save
end