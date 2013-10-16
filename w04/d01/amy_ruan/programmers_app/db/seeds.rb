# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

programmers= []

CSV.foreach("/Users/Amy/ga_wdi/homework/w03/d05/amy_ruan/programming_app/programmers.csv") do |row|
  programmers<< row
end


programmers.each do |programmer|
  Programmer.create(:name => programmer[0], :twitter_username => programmer[1], :twitter_pic => programmer[2])
end
