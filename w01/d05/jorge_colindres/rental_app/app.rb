require 'pry'
require 'pry-nav'
require 'pry-remote'
require 'rainbow'

require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'person.rb'

b1 = Building.new('100 Main Street', 3)
b2 = Building.new('55 West Avenue', 2)

# For variety, I'm giving the second building an
# elevator and a doorman
b2.give_elevator
b2.give_doorman

a1 = Apartment.new('1A', 500, 2, 2)
a2 = Apartment.new('1B', 725, 3, 2)
a3 = Apartment.new('1C', 500, 2, 2)
a4 = Apartment.new('2A', 650, 2, 2.5)
a5 = Apartment.new('2B', 800, 4, 3)
a6 = Apartment.new('2C', 400, 1, 1)

a7 = Apartment.new('1-1', 500, 2, 2)
a8 = Apartment.new('1-2', 700, 3, 2)
a9 = Apartment.new('2-1', 620, 2, 2)
a10 = Apartment.new('2-2', 580, 2, 1)
a11 = Apartment.new('3-1', 850, 4, 3)
a12 = Apartment.new('3-2', 450, 2, 1)

p1 = Person.new('James', 23, 'male')
p2 = Person.new('Susan', 22, 'female')
p3 = Person.new('Greg', 25, 'male')
p4 = Person.new('Matthew', 25, 'male')
p5 = Person.new('Tony', 45, 'male')
p6 = Person.new('Carmella', 40, 'female')
p7 = Person.new('AJ', 20, 'male')
p8 = Person.new('Devin', 20, 'female')
p9 = Person.new('Greg', 55, 'male')
p10 = Person.new('Martha', 45, 'female')
p11 = Person.new('Anup', 32, 'male')
p12 = Person.new('Singa', 29, 'female')
p13 = Person.new('Jerry', 35, 'male')
p14 = Person.new('Elaine', 32, 'female')
p15 = Person.new('Ziggy', 29, 'male')
p16 = Person.new('Loise', 22, 'female')


# Filling the apartments with people
a1.renters = [p1, p2]
  a1.occupy
a2.renters = [p3, p4]
  a2.occupy
a3.renters = [p5, p6]
  a3.occupy
a4.renters = [p7, p8]
  a4.occupy
a7.renters = [p9, p10]
  a7.occupy
a8.renters = [p11, p12]
  a8.occupy
a10.renters = [p13, p14]
  a10.occupy
a12.renters = [p15, p16]
  a12.occupy

# Adding apartments into the first building
b1.add_apartment(a1)
b1.add_apartment(a2)
b1.add_apartment(a3)
b1.add_apartment(a4)
b1.add_apartment(a5)
b1.add_apartment(a6)

# Adding apartments into the second building
b2.add_apartment(a7)
b2.add_apartment(a8)
b2.add_apartment(a9)
b2.add_apartment(a10)
b2.add_apartment(a11)
b2.add_apartment(a12)

# Counting the people and apartments in
# the first building
b1.count_people
b1.count_apartments_available

# Counting the people and apartments in
# the second building
b2.count_people
b2.count_apartments_available

# Displaying the results
puts p1.show_person
puts b1.show_building
puts a3.show_apartment
puts a3.get_gender_ratio.color(:yellow)

puts "\n"

puts p9.show_person
puts b2.show_building
puts a9.show_apartment
puts a9.get_gender_ratio.color(:yellow)

binding.prygit



