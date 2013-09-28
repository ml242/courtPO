require 'pry'
require 'pry-nav'
require 'pry-remote'

require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'person.rb'

b1 = Building.new
a1 = Apartment.new("1A")
a2 = Apartment.new("1B")
p1 = Person.new("James", 23, "male", a1.apartment_id)

a1_renters = [p1.name]

a1.sqft = 500
a1.num_bedrooms = 2
a1.num_baths = 1
a1.renters = a1_renters
a1.occupy
a1.price = 2500


a2.sqft = 500
a2.num_bedrooms = 2
a2.num_baths = 1
a2.price = 2500

a1_id = a1.apartment_id.to_sym
a2_id = a2.apartment_id.to_sym

a1_info = a1.get_apartment_info
a2_info = a2.get_apartment_info

b1.add_apartment(a1_id, a1_info)
b1.add_apartment(a2_id, a2_info)

binding.pry

b1.count_people