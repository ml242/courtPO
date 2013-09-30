require 'pry'
require_relative 'building'
require_relative 'apartment'
require_relative 'person'

# how can i put all of the input data into another file?
p1 = Person.new
p1.name = 'Quin'
p1.age = 26
p1.gender = 'm'
#p1. apartment

p2 = Person.new
p2.name = 'Anders'
p2.age = 26
p2.gender = 'm'
#p2. apartment

p3 = Person.new
p3.name = 'Jared'
p3.age = 25
p3.gender = 'm'
#p3. apartment

p4 = Person.new
p4.name = 'Michael'
p4.age = 27
p4.gender = 'm'
#p4. apartment

p5 = Person.new
p5.name = 'Michael'
p5.age = 27
p5.gender = 'm'
#p5. apartment

p6 = Person.new
p6.name = 'John'
p6.age = 30
p6.gender = 'm'
#p6. apartment

p7 = Person.new
p7.name = 'Caroline'
p7.age = 25
p7.gender = 'f'
#p7. apartment

p8 = Person.new
p8.name = 'Brittany'
p8.age = 26
p8.gender = 'f'
#p8. apartment

p9 = Person.new
p10 = Person.new
p11 = Person.new
p12 = Person.new
p13 = Person.new
p14 = Person.new
p15 = Person.new
p16 = Person.new
p17 = Person.new
p18 = Person.new
p19 = Person.new
p20 = Person.new


a1 = Apartment.new
a1. apt_id = 'A'
a1.sqft = 500
a1.num_bedrooms = 2
a1.num_baths = 1
a1.price = 2000
a1.renters = [p1, p2]

a2 = Apartment.new
a2. apt_id = 'B'
a2.sqft = 200
a2.num_bedrooms = 2
a2.num_baths = 1
a2.price = 2000
a2.renters = [p3, p4]

a3 = Apartment.new
a3. apt_id = 'C'
a3.sqft = 500
a3.num_bedrooms = 1
a3.num_baths = 1
a3.price = 2200
a3.renters = [p5]

a4 = Apartment.new
a4. apt_id = 'D'
a4.sqft = 300
a4.num_bedrooms = 2
a4.num_baths = 1
a4.price = 2000
a4.renters = [p6, p7]

a5 = Apartment.new
a5. apt_id = 'E'
a5.sqft = 700
a5.num_bedrooms = 3
a5.num_baths = 2
a5.price = 2500
a5.renters = [p8, p9, p10]

a6 = Apartment.new
a6. apt_id = 'F'
a6.sqft = 200
a6.num_bedrooms = 1
a6.num_baths = 1
a6.price = 1500
a6.renters = [p11]

a7 = Apartment.new
a7. apt_id = 'G'
a7.sqft = 400
a7.num_bedrooms = 1
a7.num_baths = 1
a7.price = 1700
a7.renters = [p12]

a8 = Apartment.new
a9 = Apartment.new
a10 = Apartment.new
a11 = Apartment.new
#how can you have the hash's already created based on the number of floors?

b1 = Building.new
b1.address = 'Soho Park'
b1.has_doorman = true
b1.is_walkup = false
b1.num_floors = 3
b1.apartments = {
  :floor_one => [a1, a2],
  :floor_two => [a3, a4],
  :floor_three => [a5, a6]
}

b2 = Building.new
b2.address = 'St. Marks'
b1.has_doorman = false
b1.is_walkup = true
b2.num_floors = 2
b2.apartments = {
  :floor_one => [a6, a7],
  :floor_two => [a8, a9],
  :floor_three => [a10, a11]
}

#binding.pry
# p1.apartment = a1
# puts p1.apartment
puts b1.count_renters
puts b2.count_renters
#puts b1.inspect
#puts b2.inspect


