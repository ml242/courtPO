
require_relative 'apartment'
require_relative 'building'
require_relative 'person'

p1 = Person.new
p1.name = "Amy"
p1.age = 25
p1.gender = "female"
p1.apartment = "1a"

p2 = Person.new
p2.name = "David"
p2.age = 28
p2.gender = "male"
p2.apartment = "1a"

p3 = Person.new
p3.name = "Anthony"
p3.age = 24
p3.gender = "male"
p3.apartment = "2a"

p4 = Person.new
p4.name = "Amanda"
p4.age = 24
p4.gender = "female"
p4.apartment = "2a"

p5 = Person.new
p5.name = "Eddie"
p5.age = 26
p5.gender = "male"
p5.apartment = "3a"

p6 = Person.new
p6.name = "Saad"
p6.age = 30
p6.gender = "male"
p6.apartment = "3a"


a1 = Apartment.new
a1.sqft = 6000
a1.num_bedrooms =  4
a1.num_baths = 3

a2 = Apartment.new
a2.sqft = 5050
a2.num_bedrooms =  4
a2.num_baths = 3

a3 = Apartment.new
a3.sqft = 4000
a3.num_bedrooms =  2
a3.num_baths = 1

a4 = Apartment.new
a4.sqft = 3000
a4.num_bedrooms =  2
a4.num_baths = 1

a5 = Apartment.new
a5.sqft = 4000
a5.num_bedrooms =  2
a5.num_baths = 1

a6 = Apartment.new
a6.sqft = 3000
a6.num_bedrooms =  2
a6.num_baths = 1

b1 = Building.new
b1.address ="1719 West 10th St"
b1.has_doorman = true
b1.is_walkup = false
b1.num_floors = 4

b2 = Building.new
b2.address ="147 Duane St"
b2.has_doorman = true
b2.is_walkup = false
b2.num_floors = 3

a1.renters << p1
a1.renters << p2
a2.renters << p3
a2.renters << p4
a3.renters << p5
a3.renters << p5

b1.apartments << a1
b1.apartments << a2
b1.apartments << a3
b1.apartments << a4

b2.apartments << a5
b2.apartments << a6

# b1.count_people
# print a1.is_occupied?
# print a4.is_occupied?
# print b1.count_apartments_available
# # print b1.apartments[1].renters.length

# print b1.count_people
# print a1.gender_ratio
print a1.make_price