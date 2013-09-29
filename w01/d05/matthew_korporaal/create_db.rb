require 'faker'
require 'json'
require 'pry'
require 'pry-nav'
require_relative 'person'
require_relative 'building'
require_relative 'apartment'

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
  tenants
end

def create_apt(aptID)
  # Create apartment sizes in sqft and base other apartment info from this
  small_apt_size = 200
  medium_apt_size = 500
  large_apt_size = 900
  sqft = [small_apt_size, medium_apt_size, large_apt_size].sample
  case sqft
    when small_apt_size
      num_bed = 0
      num_bath = 1
      rent_price = 1500
    when medium_apt_size
      num_bed = 1
      num_bath = 1.5
      rent_price = 2000
    when large_apt_size
      num_bed = 2
      num_bath = 2
      rent_price = 3500
    end
  # Populate apartment info
  apartment_info = {
    :aptID => aptID,
    :sqft => sqft,
    :num_bed => num_bed,
    :num_bath => num_bath,
    :price => rent_price
  }
end

def create_buildings(num_buildings, max_num_floors, max_apts_per_floor, max_tenants_per_apt)
  r = Random.new
  building_array = []
  num_buildings.times do |b_index|
    num_floors = r.rand(1..max_num_floors)
    apts_per_floor = r.rand(1..max_apts_per_floor)
    num_apartments = num_floors * apts_per_floor
    if b_index < 10
      buildingID = "B0" + (b_index +1).to_s
    else
      buildingID = "B" + (b_index + 1).to_s
    end
    building_info = {
      :buildingID => buildingID,
      :address => String.new(Faker::Address.street_address(include_secondary = false) + ", " + Faker::Address.city + ", " + Faker::Address.state_abbr + " " + Faker::Address.zip_code),
      :has_doorman => [true, false].sample,
      :is_walkup => [true, false].sample,
      :num_floors => num_floors,
      :num_apartments => num_apartments,
      :renters => [""]}
    building_array << building_info
    # Populate each floor with apartments
    apartment_array = []
    num_floors.times do |floor_index|
      apts_per_floor.times do |apt_index|
      #Create apartment ID, then create apartment
        if floor_index < 10 && apt_index < 10
          aptID = "#{building_info[:buildingID]}F0#{floor_index+1}A0#{apt_index+1}"
        elsif floor_index < 10 && apt_index > 10
          aptID = "#{building_info[:buildingID]}F0#{floor_index+1}A#{apt_index+1}"
        elsif floor_index > 10 && apt_index < 10
          aptID = "#{building_info[:buildingID]}F#{floor_index+1}A0#{apt_index+1}"
        else
          aptID = "#{building_info[:buildingID]}F#{floor_index+1}A#{apt_index+1}"
        end
        apartment_info = create_apt(aptID)
        apartment_array << apartment_info
      end
    end
    bldg_instance = Building.new(building_info)
    bldg_instance = bldg_instance.add_apts(building_info, apartment_array)
    building_array << bldg_instance
  end
  building_array
end

num_of_bldgs = 1
max_num_floors = 3
max_apts_per_floor = 2
max_tenants_per_apt = 2

bldg_db = create_buildings(num_of_bldgs, max_num_floors, max_apts_per_floor, max_tenants_per_apt)
tenants = create_tenants(max_tenants_per_apt)

puts bldg_db[0][:apartments]


#puts bldg_db.inspect







