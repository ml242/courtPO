# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

CSV.foreach('/Users/JC/ga_wdi/hw/w04/d01/jorge_colindres/programming_app/db/programmers.csv') do |row|
  Programmer.create(:name => "#{row[0]}", :twitter_username => "#{row[1]}", :twitter_pic => "#{row[2]}")
end
