require 'pry'
require 'pry-nav'
require 'pry-remote'
# require 'json'
# require 'pp'

require_relative 'building'
require_relative 'apartment'
require_relative 'person'

 # json = IO.read('rental_db.json')
 # obj = JSON.parse(json)

#pp obj
binding.pry
bldg1_hash = {
  :address => "40 1st Ave NY NY 10008",
  :has_doorman => false,
  :is_walkup => true,
  :num_floors => 2,
  :num_apartments => 4,
  :renters => [""]
}
bldg2_hash = {
  :address => "400 W 77th St NY NY 10018",
  :has_doorman => true,
  :is_walkup => false,
  :num_floors => 3,
  :num_apartments => 3,
  :renters => [""]
}
apt1 = {
  :aptID => 010101,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt2 = {
  :aptID => 010102,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt3 = {
  :aptID => 010203,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt4 = {
  :aptID => 010204,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt5 = {
  :aptID => 020101,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt6 = {
  :aptID => 020202,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}
apt7 = {
  :aptID => 020303,
  :sqft => 300,
  :num_bed => 2,
  :num_bath => 1.5,
  :price => 2200
}

# Create apartments
apt1 = Apartment.new(apt1)
apt2 = Apartment.new(apt2)
apt3 = Apartment.new(apt3)
apt4 = Apartment.new(apt4)
apt_bldg1 = [apt1, apt2, apt3, apt4]
apt5 = Apartment.new(apt5)
apt6 = Apartment.new(apt6)
apt7 = Apartment.new(apt7)
apt_bldg2 = [apt5, apt6, apt7]

# Create buildings
bldg1 = Building.new(bldg1_hash, apt_bldg1)
bldg2 = Building.new(bldg2_hash, apt_bldg2)

# Create People
p1 = Person.new("Roberta", 24, "f")
p2 = Person.new("Jimmy", 12, "m")
p3 = Person.new("George", 29, "m")
p4 = Person.new("Jane", 39, "f")
p5 = Person.new("Lauren", 33, "f")
p6 = Person.new("Larry", 28, "m")
p7 = Person.new("Simon", 77, "m")
p8 = Person.new("Cynthia", 23, "f")
p9 = Person.new("Jessica", 32, "f")
p10 = Person.new("Luke", 54, "m")
p11 = Person.new("Jordan", 25, "m")
p12 = Person.new("Mary", 28, "f")
p13 = Person.new("Sarita", 30, "f")
p14 = Person.new("Bill", 43, "m")
binding.pry

if !apt1.is_occupied?
  # Add tenants to building 1
  apt1.add_tenants([p1.name, p2.name])
end

# apt2 is going to stay empty
#apt2.add_tenants([p3.name, p4.name])

if !apt3.is_occupied?
  apt3.add_tenants([p5.name])
end

if !apt4.is_occupied?
  apt4.add_tenants([p6.name, p7.name, p8.name])
end
# Add apartments to building 1
bldg1.add_apt(apt1)
bldg1.add_apt(apt2)
bldg1.add_apt(apt3)
bldg1.add_apt(apt4)

# Add tenants to building 2 if not occupied
if !apt5.is_occupied?
  apt5.add_tenants([p9.name])
end

#apt6 will be empty for now
#apt6.add_tenants([p10.name, p11.name])

# Add tenants to building 3 if not occupied
if !apt7.is_occupied?
  apt7.add_tenants([p12.name, p13.name, p14.name])
end

##add_renters??
# Add apartments to building 2
bldg2.add_apt(apt5)
bldg2.add_apt(apt6)
bldg2.add_apt(apt7)

# if !apt1.is_occupied?
#   apt1.tenants([p1 p2 p3])
# end


binding.pry