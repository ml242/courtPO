require_relative 'apartment_review'
require_relative 'building_review'
require_relative 'person_review'

require 'pry'
require 'pry-nav'
require 'pry-remote'
require 'annotate'

b1 = Building.new("30 Scholes", false, true, 4)
binding.pry
b1.apartments << Apartment.new
# or
#b1.apartments.push(Apartment.new)

b2 = Building.new("30 Scholes", false, true, 4)
a1 = Apartment.new

t1 = Person.new('Jon', 55, 'm')
t2 = Person.new('Alicia', 25, 'f')
t3 = Person.new('Phil', 35, 'm')

b2.apartments << a1
#b2.apartments.first.@tenants

b2.apartments.first.class
# -> Apartment

b2.apartments.first.tenants
# -> []
b2.apartments.first.tenants << t1
b2.apartments.first.tenants << t2
b2.apartments.first.tenants << t3

a1.building = b2
t1.apartment = a1
# not needed because apt knows what building its in
#t1.building = b1

t1.apartment.building.apartments.first.tenants.first

if !a1.occupied?
  a1.move_in(t1)
end

puts b2.count_people
b1.apartments.push(Apartment.new)
puts b1.count_apartments_available
#puts b1.apartments.tenants

b1.apartments.map do |apt|
  apt.tenants.size
end

b1.apartments.map {|apt| apt.tenants.size }


