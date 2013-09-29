require_relative 'rental_app_building'
require_relative 'rental_app_person'
require_relative 'rental_app_apartment'

b1 = Building.new
b1.intialize("140 Franklin St", true, false, 6)
b1a1 = Apartment.new(3000, 3, 2, 5000, b1, 1)
b1a2 = Apartment.new(2000, 2, 1, 3000, b1, 1)
p1 = Person.new("James", 22, b1a1)
puts b1.count_apartments_available