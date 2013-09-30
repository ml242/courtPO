require_relative 'rental_app_building'
require_relative 'rental_app_person'
require_relative 'rental_app_apartment'

b1 = Building.new("140 Franklin St", true, false, 3)
b2 = Building.new("141 Prince St.", false, true, 2)
b1a1 = Apartment.new(3000, 3, 2, 5000, b1, 1)
b1a2 = Apartment.new(2000, 2, 2, 3000, b1, 1)
b1a3 = Apartment.new(1000, 2, 1, 1500, b1, 2)
b1a4 = Apartment.new(4000, 3, 3, 7000, b1, 2)
b1a5 = Apartment.new(5000, 4, 4, 7000, b1, 3)
james = Person.new("James", 22, b1a1)
jamie = Person.new("Jamie", 25, b1a1)
jon = Person.new("Jon", 30, b1a2)
janet = Person.new("Janet", 28, b1a3)
jeremy = Person.new("Jeremy", 27, b1a4)
jean = Person.new("Jean", 32, b1a4)
julia = Person.new("Julia", 8, b1a4)
jana = Person.new("Jana", 6, b1a4)
b2a1 = Apartment.new(2000, 2, 1, 2000, b2, 1)
b2a2 = Apartment.new(2000, 2, 1, 2000, b2, 2)
june = Person.new("June", 24, b2a1)
jordan = Person.new("Jordan", 24, b2a1)
puts b1.count_people
puts b1.count_apartments_available
puts b2.count_people
puts b2.count_apartments_available