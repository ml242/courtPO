require 'pry'
require 'Faker'

require_relative 'building'
require_relative 'person'
require_relative 'apartment'

####
p1 = Person.new
  p1.apartment = "a11"
p2 = Person.new
  p2.apartment = "a11"
p3 = Person.new
  p3.apartment = "a11"
p4 = Person.new
  p4.apartment = "a12"
p5 = Person.new
  p5.apartment = "a12"
p6 = Person.new
  p6.apartment = "a12"
p7 = Person.new
  p7.apartment = "a21"
p8 = Person.new
  p8.apartment = "a21"
p9 = Person.new
  p9.apartment = "a21"
p10 = Person.new
  p10.apartment = "a22"
p11 = Person.new
  p11.apartment = "a31"
p12 = Person.new
  p12.apartment = "a31"
p13 = Person.new
  p13.apartment = "a32"
p14 = Person.new
  p14.apartment = "a32"
p15 = Person.new
  p15.apartment = "a32"
p16 = Person.new
  p16.apartment = "a41"
p17 = Person.new
  p17.apartment = "a41"
p18 = Person.new
  p18.apartment = "a41"

####

a11 = Apartment.new
  a11.renters = [p1, p2, p3]
  a11.building = "b1"

a12 = Apartment.new
  a12.renters = [p4, p5, p6]
  a12.building = "b1"
a13 = Apartment.new
  a13.building = "b1"

a21 = Apartment.new
  a21.renters = [p7, p8, p9]
  a21.building = "b1"
a22 = Apartment.new
  a22.renters = [p10]
  a22.building = "b1"

a31 = Apartment.new
  a31.renters = [p11, p12]
  a31.building = "b2"
a32 = Apartment.new
  a32.renters = [p13, p14, p15]
  a32.building = "b2"

a41 = Apartment.new
  a41.renters = [p16, p17, p18]
  a41.building = "b2"
a42 = Apartment.new
  a42.building = "b2"

####
b1 = Building.new
  b1.apartments = [a11, a12, a13, a21, a22]
b2 = Building.new
  b2.apartments = [a31, a32, a41, a42]

binding.pry