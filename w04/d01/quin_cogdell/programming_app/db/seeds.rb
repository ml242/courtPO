# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

file = "programmers.csv"

CSV.foreach(file) do |row|
  name = row[0]
  twitter_name = row[1]
  twitter_pic_url = row [2]
  programmer = Programmer.new(name: name, twitter_username: twitter_name, twitter_pic_url: twitter_pic_url)
  programmer.save
end
