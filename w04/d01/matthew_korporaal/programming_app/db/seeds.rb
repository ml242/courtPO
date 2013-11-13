# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
file = File.open('/Users/MTK/ga_wdi/hw/WDI_NYC_Hash_Work/w04/d01/matthew_korporaal/programming_app/db/programmers.csv', 'r')

file.each do |entry|
  user = entry.chomp.split(",")
  p1 = Programmer.create
  p1.name = user[0]
  p1.twitter_acct = user[1]
  p1.avatar_url = user[2]
  p1.save
end
file.close