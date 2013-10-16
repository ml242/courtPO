# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

programmers = CSV.parse(File.read('programmers.csv'))
programmers.each do |person|
  name = person[0]
  twitter_username = person[1]
  twitter_pic = person[2]
Programmer.create( { :name => name, :twitter_pic => twitter_pic, :twitter_username => twitter_username } )
end
