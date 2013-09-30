require 'pry'
require_relative 'building'
require_relative 'apartment'
require_relative 'person'

#Create People
p1 = Person.new("Eddie", 26, "m")
p2 = Person.new("Annie", 25, "f")
p3 = Person.new("Tony", 26, "m")
p4 = Person.new("Danny", 28, "m")
p5 = Person.new("Samantha", 24, "f")
p6 = Person.new("Stephen", 29, "m")
p7 = Person.new("Cara", 27, "f")
p8 = Person.new("Jael", 3, "f")
p9 = Person.new("Choi", 22, "m")
p10 = Person.new("Glo", 23, "f")

#Create Apartments
a1_east = Apartment.new(1700, 3, 2, 1500, "1A")
a2_east = Apartment.new(1500, 2, 1, 1300, "1B")
a3_east = Apartment.new(2000, 4, 2, 2000, "1C")
a4_east = Apartment.new(1600, 2, 2, 1600, "2A")
a5_east = Apartment.new(1800, 3, 3, 1900, "2B")
a6_east = Apartment.new(1900, 3, 2, 2300, "2C")
a7_east = Apartment.new(4000, 4, 4, 4000, "3P")

a1_west = Apartment.new(2200, 4, 2, 2200, "1A")
a2_west = Apartment.new(2400, 5, 2, 2400, "1B")
a3_west = Apartment.new(2100, 3, 2, 2000, "2A")
a4_west = Apartment.new(2400, 4, 3, 2500, "2B")

#Create Building
general_assembly_east = Building.new("915 Broadway", true, false, 3)

general_assembly_west = Building.new("902 Broadway", true, true, 2)

#Add people into apartment
a1_east.add_renter(p1.name)
a2_east.add_renter(p2.name)
a3_east.add_renter(p3.name)
a4_east.add_renter(p4.name)
a1_east.add_renter(p5.name)

a1_west.add_renter(p6.name)
a2_west.add_renter(p7.name)
a3_west.add_renter(p8.name)
a1_west.add_renter(p9.name)
a1_west.add_renter(p10.name)

#Add Apartments into building by floors
general_assembly_east.add_apt(1, [a1_east.apartment_num, a2_east.apartment_num, a3_east.apartment_num])
general_assembly_east.add_apt(2, [a4_east.apartment_num, a5_east.apartment_num, a6_east.apartment_num])
general_assembly_east.add_apt(3, [a7_east.apartment_num])

general_assembly_west.add_apt(1, [a1_west.apartment_num, a2_west.apartment_num])
general_assembly_west.add_apt(2, [a3_west.apartment_num, a4_west.apartment_num])

#Add People into Building with apt
general_assembly_east.add_people(1, a1_east.apartment_num, p1.name)
general_assembly_east.add_people(1, a1_east.apartment_num, p5.name)
general_assembly_east.add_people(1, a2_east.apartment_num, p2.name)
general_assembly_east.add_people(1, a3_east.apartment_num, p3.name)
general_assembly_east.add_people(2, a4_east.apartment_num, p4.name)

general_assembly_west.add_people(1, a1_west.apartment_num, p6.name)
general_assembly_west.add_people(1, a1_west.apartment_num, p9.name)
general_assembly_west.add_people(1, a1_west.apartment_num, p10.name)
general_assembly_west.add_people(1, a2_west.apartment_num, p7.name)
#general_assembly_west.add_people(2, a3_east.apartment_num, p8.name)


#show building's info
puts "These are the people and apartments in General Assembly East: #{general_assembly_east.apartments}."
puts "There are currently #{general_assembly_east.count_people} people living in General Assembly East."
puts "There are a total of #{general_assembly_east.total_apartments} apartments at General Assembly East with #{general_assembly_east.count_apartments_available} available."
puts " "
puts "These are the people and apartments at General Assembly West: #{general_assembly_west.apartments}."
puts "There are currently #{general_assembly_west.count_people} people living in General Assembly West."
puts "There are a total of #{general_assembly_west.total_apartments} apartments available at General Assembly West with #{general_assembly_west.count_apartments_available} available."



