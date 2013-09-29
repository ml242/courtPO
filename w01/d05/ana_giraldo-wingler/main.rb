require 'pry'

require_relative 'building'
require_relative 'person'
require_relative 'apartment'

p1 = Person.new
p2 = Person.new
p3 = Person.new

p1.name = "Ana"
p2.name = "Carmen"
p3.name = "Nico"

a1 = Apartment.new
a2 = Apartment.new
a3 = Apartment.new

b1 = Building.new

a1.renters = [p1, p2]
a2.renters = [p3]

b1.apartments = [a1, a2, a3]

Building = {
  Apartment => [Person]
}

binding.pry

puts "#{b1.apartments}"