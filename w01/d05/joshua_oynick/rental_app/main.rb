require 'pry'
require_relative 'apartment'
require_relative 'person'
require_relative 'building'


b1 = Building.new
b1.bldg_id = "1"
b1.address = "200 East 30th Street"
b1.has_doorman = true
b1.is_walkup = true
b1.num_floors = 2
b1.apartments = [a1, a2]

b2 = Building.new
b2.bldg_id = "2"
b1.address = "15 Central Park West"
b1.has_doorman = false
b1.is_walkup = false
b1.num_floors = 3
b1.apartments = [a1, a2]

a1 = Apartment.new
a1.apt_id = 'A'
a1.sqft = 500
a1.num_bedrooms = 2
a1.num_baths = 1
a1.price = 2000
a1.renters = [p1, p2]

a2 = Apartment.new
a1.apt_id = 'A'
a1.sqft = 500
a1.num_bedrooms = 2
a1.num_baths = 1
a1.price = 2000
a1.renters = [p3]

p1 = Person.new
p1.name = 'Al'
p1.age = 30
p1.gender = 'm'
p1.apartment = a1

p2 = Person.new
p2.name = 'Bob'
p2.age = 35
p2.gender = 'm'
p2.apartment = a1

p3 = Person.new
p3.name = 'Sue Ellen'
p3.age = 85
p3.gender = 'f'
p3.apartment = a2