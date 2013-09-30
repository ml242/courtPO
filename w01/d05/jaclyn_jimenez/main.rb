require 'pry'
require 'faker'

require_relative 'building'
require_relative 'apartment'
require_relative 'person'

b1 = Building.new("902 Broadway NYC", 2)
b2 = Building.new("10 E 21st Street NYC", 2)

a1 = Apartment.new
a2 = Apartment.new
a3 = Apartment.new
a4 = Apartment.new

p1 = Person.new(Faker::Name.name)
p2 = Person.new(Faker::Name.name)
p3 = Person.new(Faker::Name.name)
p4 = Person.new(Faker::Name.name)
p5 = Person.new(Faker::Name.name)
p6 = Person.new(Faker::Name.name)

b1.add_apartment(a1)
b1.add_apartment(a2)
b2.add_apartment(a3)
b2.add_apartment(a4)

a1.set_occupant(p1)
a2.set_occupant(p2)
a3.set_occupant(p3)

puts b1
puts b2

binding.pry