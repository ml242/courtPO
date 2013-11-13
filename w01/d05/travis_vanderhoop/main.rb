require 'pry'

require '/Users/vanderhoop/ga_WDI/hw/w01/d05/travis_vanderhoop/apartment.rb'
require '/Users/vanderhoop/ga_WDI/hw/w01/d05/travis_vanderhoop/building.rb'
require '/Users/vanderhoop/ga_WDI/hw/w01/d05/travis_vanderhoop/person.rb'

#Buildings----------------------------------------------------------
b1=Building.new("452 Dean Street", false, true, 3)   #(address, doorman, walkup, num_floors)
b2=Building.new("320 West End Avenue", true, false, 15)
b3=Building.new("1180 Bowen Court", false, false, 2)

#Apartments--------------------------------------------------------
a1 = Apartment.new(3_000, 2, 1, 2_700)                  #(sqft, num_bedrooms, num_baths, price)
a2 = Apartment.new(42_000, 4, 2, 300_000)

a3 = Apartment.new(5_000, 4, 2, 3_000)
a4 = Apartment.new(400, 4, 2, 1500)

a5 =Apartment.new(3000, 2, 1, 2500)
a6= Apartment.new(200,1,1, 500)

#People------------------------------------------------------------
Travis = Person.new("Travis Vander Hoop", 26, "M")  #(name, age, gender, apartment)
Kerry = Person.new("Kerry King", 25, "F")
Jon = Person.new("Jon Blue", 36, "M")

Mary = Person.new("Mary Geissman", 75, "F")
Bryerly = Person.new("Bryerly Long", 25, "F")

Mallory = Person.new("Mallory Easton", 24, "F")
Ericka = Person.new("Ericka Van Gundy", 25, "F")
Liza = Person.new("Liza Lady", 25, "F")
Laura = Person.new("Laura Bethl", 25, "F")

Sam = Person.new("Sam Eldred", 25, "M")
Tony = Person.new("Tony McGibbon", 26, "M")
Abi = Person.new("Abi McGibbon", 26, "F")

Priscilla = Person.new("Priscilla Maisonet", 80, "F")
Ed = Person.new("Ed The Husband", 32, "M")
#----------------------------------------------------------------

a1.add_renter(Travis)
a1.add_renter(Kerry)
a1.add_renter(Jon)

a2.add_renter(Mary)
a2.add_renter(Bryerly)

a3.add_renter(Mallory)
a3.add_renter(Ericka)
a3.add_renter(Liza)
a3.add_renter(Laura)

a4.add_renter(Sam)
a4.add_renter(Tony)
a4.add_renter(Abi)

a5.add_renter(Priscilla)
a5.add_renter(Ed)

b1.add_apt(a1)
b1.add_apt(a5)

b2.add_apt(a2)

b3.add_apt(a4)
b3.add_apt(a3)
b3.add_apt(a6)

binding.pry

p b1.count_total_renters
p b2.count_total_renters
p b3.count_total_renters

p b1.count_apartments_available
p b2.count_apartments_available
p b3.count_apartments_available

p b1.count_filled_rooms
p b2.count_filled_rooms
p b3.count_filled_rooms




















