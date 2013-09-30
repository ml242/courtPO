require 'faker'
require 'json'
require 'pry'
require 'pry-nav'
require 'rainbow'

require_relative 'person'
require_relative 'building'
require_relative 'apartment'

# Create 1 to max_tenants and put into an array
def create_tenants(max_tenants_per_apt)
  r = Random.new
  tenants_array = []
  num_tenants = r.rand(1..max_tenants_per_apt)
  num_tenants.times do |p_index|
    tenant_hash = {
     :name => Faker::Name.name,
     :age => r.rand(1..99),
     :gender => ["m","f"].sample
    }
    person = "person" + p_index.to_s
    person = Person.new(tenant_hash)

    tenants_array << tenant_hash
  end
  tenants_array
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
    :price => rent_price,
    :tenants => []
  }
end

def create_building_info_hash(num_floors, apts_per_floor, building_index)

    num_apartments = num_floors * apts_per_floor
    #Create a unique building id #
    if building_index < 10
      buildingID = "B0" + (building_index + 1).to_s
    else
      buildingID = "B" + (building_index + 1).to_s
    end

    # populate building hash
    building_info = {
      :buildingID => buildingID,
      :address => String.new(Faker::Address.street_address(include_secondary = false) + ", " + Faker::Address.city + ", " + Faker::Address.state_abbr + " " + Faker::Address.zip_code),
      :has_doorman => [true, false].sample,
      :is_walkup => [true, false].sample,
      :num_floors => num_floors,
      :num_apartments => num_apartments,
      :renters => [""]}
end

def fill_floor_with_apartments(num_floors, apts_per_floor, max_tenants_per_apt)
    apartment_array = []
    num_floors.times do |floor_index|
      rand_instance = Random.new
      # Going to fill each floor with a certain occupancy, setting up
      #num_apts_to_fill = (percent_occupancy / 100) * apts_per_floor
      apts_per_floor.times do |apt_index|
      #Create apartment number, then create apartment
        if floor_index < 10 && apt_index < 10
          aptID = "F0#{floor_index+1}A0#{apt_index+1}"
        elsif floor_index < 10 && apt_index > 10
          aptID = "F0#{floor_index+1}A#{apt_index+1}"
        elsif floor_index > 10 && apt_index < 10
          aptID = "F#{floor_index+1}A0#{apt_index+1}"
        else
          aptID = "F#{floor_index+1}A#{apt_index+1}"
        end
        apartment_info = create_apt(aptID)
     #     apartment_array << apartment_info

        # Add people to apartments about 50% of the time
        apt_instance = Apartment.new(apartment_info)
        num_tenants_per_apartment = rand_instance.rand(1..max_tenants_per_apt)
        print "Apartment \#".color("fedcba")
        puts apartment_info[:aptID]
        if [true, false].sample
          tenants = create_tenants(num_tenants_per_apartment)
          apt_instance.add_tenants(tenants)
          apt_instance.show_tenants
          apartment_info[:tenants] << tenants

          puts apt_instance.tenants
        end
          apartment_array << apartment_info

        print "Apartment is occupied? ".color("abcdef")
        puts apt_instance.is_occupied?
        puts ""
      end
      # number of apartments to fill based on occupancy argument
      #
      # num_apts_to_fill.times do
      # end
      #end
    end
    apartment_array
end

def create_buildings(num_buildings, max_num_floors, max_apts_per_floor, max_tenants_per_apt, percent_occupancy)
  rand_instance = Random.new
  building_array = []
  # Create number of building specified by num_buildings
  num_buildings.times do |b_index|
    # Random create number of floors and apts/flr based on input
    num_floors = rand_instance.rand(1..max_num_floors)
    apts_per_floor = rand_instance.rand(1..max_apts_per_floor)

    # Populate hash with building information and add to array of buildings
    building_info = create_building_info_hash(num_floors, apts_per_floor, b_index)
    building_array << building_info
    # Populate each floor with apartments
    apartment_array = fill_floor_with_apartments(num_floors, apts_per_floor, max_tenants_per_apt)

    # Create the building instance and add apartments
    bldg_instance = Building.new(building_info)
    # Add apartments to building
    bldg_instance.add_apts(building_info, apartment_array)
    bldg_instance.show_building
    print "\nNumber of apartments available:  ".color("abccba")
    puts "#{bldg_instance.get_num_apt_avail(apartment_array)}".color("abccba")
    print "Number of apartments occupied:  ".color("abccba")
    puts "#{bldg_instance.get_num_apt_occupied(apartment_array)}".color("abccba")

    puts "Total Apartments: #{bldg_instance.num_apartments}\n".color("abccba")
  end
  building_array
end

# constants
num_of_bldgs = 2
max_num_floors = 4
max_apts_per_floor = 4
max_tenants_per_apt = 4
# not working yet. now just randomly choosing true or false
percent_occupancy = 70

print "How many buildings do want to generate?  "
num_of_bldgs = gets.chomp.to_i

# Create buildings and fill them
bldg_db = create_buildings(num_of_bldgs, max_num_floors, max_apts_per_floor, max_tenants_per_apt, percent_occupancy)

# Print apt info from data
# num_of_bldgs.times do |bldg_ind|
#   puts "\nBUILDING #{bldg_ind + 1} APARTMENTS".color("fa06b2")
#   puts bldg_db[bldg_ind][:apartments]
#   puts " "
# end



