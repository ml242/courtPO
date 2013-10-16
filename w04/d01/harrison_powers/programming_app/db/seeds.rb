# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

file = File.open("#{Rails.root}/db/programmers.csv", 'r')

csv_array = file.map do |line|
  line.chomp.split(',')
end

csv_array.map! do |line|
  line = {
    :name => line[0],
    :github_username => line[1],
    :twitter_username => line[2],
    :img_url => line[3]
  }
end

csv_array.each do |programmer|
  p1 = Programmer.create(
    :name => programmer[:name],
    :github_username => programmer[:github_username],
    :twitter_username => programmer[:twitter_username],
    :img_url => programmer[:img_url]
  )
  puts "Added #{p1.name} to database with ID: #{p1.id}"
end
