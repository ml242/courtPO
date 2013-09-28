require 'pry'
require 'pry-nav'
require 'pry-remote'

require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'person.rb'

b1 = Building.new
a1 = Apartment.new
a2 = Apartment.new
p1 = Person.new

test_renters = ["James", "Susan"]

a1.sqft = 500
a1.num_bedrooms = 2
a1.num_baths = 1
a1.renters = test_renters
a1.occupy
a1.price = 2500


a2.sqft = 500
a2.num_bedrooms = 2
a2.num_baths = 1
a2.price = 2500

a1_info = a1.get_apartment_info

a2_info = a2.get_apartment_info

b1.add_apartment(:a1, a1_info)
b1.add_apartment(:a2, a2_info)

binding.pry

b1.count_people