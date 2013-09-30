require 'pry'
require 'pry-nav'

require_relative 'building'

require_relative 'apartment'

require_relative 'people'

b1 = Building.new
b2 = Building.new

a1b1 = Apartment.new
a2b1 = Apartment.new
a3b1 = Apartment.new
a4b1 = Apartment.new

a1b2 = Apartment.new
a2b2 = Apartment.new
a3b2 = Apartment.new
a4b2 = Apartment.new

p1 = Person.new("Jimmy", 26, "m")
p2 = Person.new("Tommy", 27, "m")
p3 = Person.new("Kathleen", 23, "f")
p4 = Person.new("Jenna", 22, "f")
p5 = Person.new("Barbara", "55", "f")
p6 = Person.new("Terry", 55, "m")
p7 = Person.new("Paul", 33, "m")
p8 = Person.new("Jeremy", 35, "m")
p9 = Person.new("Scott", 33, "m")

b1.address = "902 Broadway"
b1.has_doorman = true
b1.is_walkup = false
b1.num_floors = 2
b1.apartments = [a1b1, a2b1, a3b1, a4b1]
b1.count_people = renters.length

b2.address = "915 Broadway"
b2.has_doorman = true
b2.is_walkup = true
b2.num_floors = 2
b2.apartments = [a1b2, a2b2, a3b2, a4b2]
b2.count_people = renters.length

a1b1.num_bedrooms = 1
a1b1.num_baths = 1
a1b1.floor = 1
a1b1.price = 1500
a1b1.is_occupied = true
a1b1.renters = [p5, p6]

a2b1.num_bedrooms = 2
a2b1.num_baths = 1.5
a2b1.floor = 1
a2b1.price = 3000
a2b1.is_occupied = false
a2b1.renters = []

a3b1.num_bedrooms = 1
a3b1.num_baths = 1.5
a3b1.floor = 2
a3b1.price = 2000
a3b1.is_occupied = true
a3b1.renters = [p1]

a4b1.num_bedrooms = 2
a4b1.num_baths = 1.5
a4b1.floor = 2
a4b1.price = 2500
a4b1.is_occupied = false
a4b1.renters = []

a1b2.num_bedrooms = 1
a1b2.num_baths = 1
a1b2.floor = 1
a1b2.price = 1200
a1b2.is_occupied = false
a1b2.renters = []

a2b2.num_bedrooms = 2
a2b2.num_baths = 1.5
a2b2.floor = 1
a2b2.price = 3500
a2b2.is_occupied = true
a2b2.renters = [p3, p4]

a3b2.num_bedrooms = 1
a3b2.num_baths = 1
a3b2.floor = 2
a3b2.price = 1300
a3b2.is_occupied = true
a3b2.renters = [p2]

a3b2.num_bedrooms = 3
a3b2.num_baths = 1
a3b2.floor = 2
a3b2.price = 4000
a3b2.is_occupied = true
a3b2.renters = [p7, p8, p9]

