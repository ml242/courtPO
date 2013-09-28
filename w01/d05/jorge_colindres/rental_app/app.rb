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

p1 = Person.new('James', 23, 'male', a1.apartment_id)
p2 = Person.new('Susan', 22, 'female', a1.apartment_id)
p3 = Person.new('Greg', 25, 'male', a2.apartment_id)
p4 = Person.new('Matthew', 25, 'male', a2.apartment_id)
p5 = Person.new('Tony', 45, 'male', a3.apartment_id)
p6 = Person.new('Carmella', 40, 'female', a3.apartment_id)
p7 = Person.new('AJ', 20, 'male', a4.apartment_id)
p8 = Person.new('Devin', 20, 'female', a4.apartment_id)
p9 = Person.new('Greg', 55, 'male', a7.apartment_id)
p10 = Person.new('Martha', 45, 'female', a7.apartment_id)
p11 = Person.new('Anup', 32, 'male', a8.apartment_id)
p12 = Person.new('Singa', 29, 'female', a8.apartment_id)
p13 = Person.new('Jerry', 35, 'male', a10.apartment_id)
p14 = Person.new('Elaine', 32, 'female', a10.apartment_id)
p15 = Person.new('Ziggy', 29, 'male', a12.apartment_id)
p16 = Person.new('Loise', 22, 'female', a12.apartment_id)


# Filling the apartments with people
a1.renters = [p1.name, p2.name]
  a1.occupy
a2.renters = [p3.name, p4.name]
  a2.occupy
a3.renters = [p5.name, p6.name]
  a3.occupy
a4.renters = [p7.name, p8.name]
  a4.occupy
a7.renters = [p9.name, p10.name]
  a7.occupy
a8.renters = [p11.name, p12.name]
  a8.occupy
a10.renters = [p13.name, p14.name]
  a10.occupy
a12.renters = [p15.name, p16.name]
  a12.occupy

# Creating vars for each apartment ID
# just to make it easier to add into buildings
a1_id = a1.apartment_id.to_sym
a2_id = a2.apartment_id.to_sym
a3_id = a3.apartment_id.to_sym
a4_id = a4.apartment_id.to_sym
a5_id = a5.apartment_id.to_sym
a6_id = a6.apartment_id.to_sym
a7_id = a7.apartment_id.to_sym
a8_id = a8.apartment_id.to_sym
a9_id = a9.apartment_id.to_sym
a10_id = a10.apartment_id.to_sym
a11_id = a11.apartment_id.to_sym
a12_id = a12.apartment_id.to_sym

# Creating vars for each apartment info
# just to make it easier to add into buildings
a1_info = a1.get_apartment_info
a2_info = a2.get_apartment_info
a3_info = a3.get_apartment_info
a4_info = a4.get_apartment_info
a5_info = a5.get_apartment_info
a6_info = a6.get_apartment_info
a7_info = a7.get_apartment_info
a8_info = a8.get_apartment_info
a9_info = a9.get_apartment_info
a10_info = a10.get_apartment_info
a11_info = a11.get_apartment_info
a12_info = a12.get_apartment_info

# Adding apartments into the first building
b1.add_apartment(a1_id, a1_info)
b1.add_apartment(a2_id, a2_info)
b1.add_apartment(a3_id, a3_info)
b1.add_apartment(a4_id, a4_info)
b1.add_apartment(a5_id, a5_info)
b1.add_apartment(a6_id, a6_info)

# Adding apartments into the second building
b2.add_apartment(a7_id, a7_info)
b2.add_apartment(a8_id, a8_info)
b2.add_apartment(a9_id, a9_info)
b2.add_apartment(a10_id, a10_info)
b2.add_apartment(a11_id, a11_info)
b2.add_apartment(a12_id, a12_info)

# Counting the people and apartments in
# the first building
b1.count_people
b1.count_apartments_available

# Counting the people and apartments in
# the second building
b2.count_people
b2.count_apartments_available

# Displaying the results
puts p1.show_person.color(:green)
puts b1.show_building.color(:red)
puts a2.show_apartment.color(:cyan)
puts a3.show_apartment.color(:yellow)

puts p9.show_person.color(:green)
puts b2.show_building.color(:red)
puts a9.show_apartment.color(:cyan)
puts a12.show_apartment.color(:yellow)

binding.pry


