require 'faker'
require 'json'
require 'pry'
require 'pry-nav'
require_relative 'person'

# Create 1-4 tenants and put into an array
def create_tenants(max_tenants_per_apt)
  r = Random.new
  tenants = []
  num_tenants = r.rand(1..max_tenants_per_apt)
  num_tenants.times do |p_index|
    tenant = Faker::Name.name
    age = r.rand(1..99)
    m_or_f = ["m","f"].sample
    person = "person" + p_index.to_s
    person = Person.new(tenant, age, m_or_f)
    tenants << person
  end
end

def create_buildings(num_buildings)
  r = Random.new
  building_array = []
  num_buildings.times do |b_index|
    num_floors = r.rand(1..20)
    num_apartments = num_floors * r.rand(1..10)
    building = "building" + b_index.to_s
    building = {
      :buildingID => b_index,
      :address => String.new( Faker::Address.street_address(include_secondary = false) + ", " + Faker::Address.city + ", " + Faker::Address.state_abbr + " " + Faker::Address.zip_code ),
      :has_doorman => [true, false].sample,
      :is_walkup => [true, false].sample,
      :num_floors => num_floors,
      :num_apartments => num_apartments,
      :renters => [""]}
    building_array << building
  end
  building_array
end

num_of_bldgs = 2
max_apts_per_floor = 4
max_tenants_per_apt = 3


bldg_db = create_buildings(2)

puts bldg_db.inspect

def create_apts(building_array)
aptId = buildingID.to_s +
sqft = [200, 500, 900].sample
apt2 = {
  :aptID => 010102,
  :sqft => 300,
  :num_bed => ,
  :num_bath => [1, 1.5, 2].sample,
  :price => 2200
}





