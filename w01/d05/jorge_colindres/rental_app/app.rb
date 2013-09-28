require 'pry'
require 'pry-nav'
require 'pry-remote'
require 'rainbow'

require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'person.rb'

b1 = Building.new('100 Main Street')
a1 = Apartment.new('1A')
a2 = Apartment.new('1B')
p1 = Person.new('James', 23, 'male', a1.apartment_id)

a1_renters = [p1.name]

a1.sqft = 500
a1.num_bedrooms = 2
a1.num_baths = 1
a1.renters = a1_renters
a1.occupy
a1.price = 2500


a2.sqft = 800
a2.num_bedrooms = 3
a2.num_baths = 2
a2.price = 4000

a1_id = a1.apartment_id.to_sym
a2_id = a2.apartment_id.to_sym

a1_info = a1.get_apartment_info
a2_info = a2.get_apartment_info

b1.add_apartment(a1_id, a1_info)
b1.add_apartment(a2_id, a2_info)

b1.count_people
b1.count_apartments_available

puts p1.show_person.color(:green)
puts a1.show_apartment.color(:cyan)
puts a2.show_apartment.color(:yellow)
puts b1.show_building.color(:red)


