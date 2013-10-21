# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Country.create(:name => "United States")

s1 = State.create(:name => "California", :motto => "Eureka")
s2 = State.create(:name => "New York", :motto => "Excelsior")
s3 = State.create(:name => "New Hampshire", :motto => "Live free or die")
s4 = State.create(:name => "Hawaii", :motto => "Ua mau ke ea o ka ʻāina i ka pono")

s1.country = c1
s2.country = c1
s3.country = c1
s4.country = c1

s1.save
s2.save
s3.save
s4.save

c2 = Country.create(:name => "Canada")

s5 = State.create(:name => "Alberta", :motto => "Fortis et liber")
s6 = State.create(:name => "British Columbia", :motto => "Splendor sine occasu")
s7 = State.create(:name => "Manitoba", :motto => "Gloriosus et liber")
s8 = State.create(:name => "Nova Scotia", :motto => "Munit haec et altera vincit")

s5.country = c2
s6.country = c2
s7.country = c2
s8.country = c2

s5.save
s6.save
s7.save
s8.save



