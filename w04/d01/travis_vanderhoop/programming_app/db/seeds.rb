# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

# file = File.open("db/programmers.csv", 'r')
# binding.pry

csv_entries = []

CSV.foreach('db/programmers.csv') do |row|                           #creates 3-value arrays for each entry in the programmers.csv file
  csv_entries << row
end

csv_entries.each do |entry|                                     #takes each entry and saves to db
  Programmer.create({name: entry[0], twitter_username:  entry[1], twitter_pic: entry[2]})
end
