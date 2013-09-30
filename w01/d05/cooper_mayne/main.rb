require 'faker'

class Building
  attr_accessor :apartments, :has_doorman
  attr_reader :address, :is_walkup, :num_floors, :floor_capacity
  def initialize ( address, has_doorman, is_walkup, num_floors )
    @address = address
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = [] #how should this be set up? 
    @floor_capacity = []
    @num_floors.times do
      @apartments.push []
      @floor_capacity.push rand(3..5)
    end
  end

  def add_apartment (apartment_object, floor)
    # NOTE: floor 1 is ground floor
    if floor <= @apartments.size && floor > 0 && space_left?(floor)
      @apartments[floor-1].push (apartment_object)
    else
      puts 'ERROR...with add_appartment'
    end
  end

  def space_left?(floor)
    @floor_capacity[floor-1] - @apartments[floor-1].size > 0
  end

  def count_apartments_available
    count = 0
    @apartments.flatten.each do |apartment|
      count += 1 unless apartment.is_occupied?
    end
    count
  end

  def count_renters
    count = 0
    @apartments.flatten.each do |apartment|
      count += apartment.renters.count
    end
    count
  end

  def collect_rent
    rent_collected = 0
    @apartments.flatten.each do |apartment|
      rent_collected += apartment.price if apartment.is_occupied?
    end
    rent_collected
  end
end

class Apartment
  attr_accessor :price, :renters
  attr_reader :sqft, :num_bedrooms, :num_baths

  def initialize (sqft, num_bedrooms, num_baths )
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @renters = []
    @price = 1500*@num_bedrooms + 500*@num_baths
  end

  def add_renter renter  #takes an array of renters
      @renters.push renter
      renter.move_to self
  end
  
  def remove_renters
    @renters = []
  end

  def is_occupied?
    @renters.count > 0
  end
end

class Person  
  attr_accessor :apartment
  def initialize (name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def move_to apartment_object
    @apartment = apartment_object
  end

  def move_from apartment_object
    @apartment = nil
  end
end

def make_town( number_of_building )
  #return an array containing all the buildings....
  town = []
  number_of_building.times do
    #fill city with buildings
    fake_address = Faker::Address::street_address
    building = Building.new(fake_address,[true,false].sample,[true,false].sample, rand(3..10) )
    town.push building

    building.apartments.each_index do |i|
      #fill floor with apartments
      building.floor_capacity[i].times do
        fake_apartment = Apartment.new(rand(500..1000), rand(1..3), rand(1..2))
        building.add_apartment(fake_apartment, i+1)
      end
    end

    building.apartments.flatten.each do |apartment|
      #fill apartments with people
      renters = rand(0..3)
      renters.times do
        #how many people? and what are their names?
        fake_name = Faker::Name::name
        renter = Person.new(fake_name, rand(20..80), ['Male','Female'].sample)
        apartment.add_renter renter
      end
    end
  end

  return town

end

town =  make_town (1)
p town[0]
puts
p 'renters ' + town[0].count_renters.to_s
p 'avil ' + town[0].count_apartments_available.to_s
