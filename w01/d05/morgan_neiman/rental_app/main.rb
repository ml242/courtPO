require 'pry'
require_relative 'building'
require_relative 'people'
require_relative 'apartments'


b1 = Building.new("place!", "victorian", 4, true, false)
a1 = Apartment.new(100_000, 400, 3, 3)
p1 = Person.new("Morgan", 21, "Female")