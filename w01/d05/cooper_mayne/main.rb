
class Building
  attr_accessor :apartments, :has_doorman
  attr_reader :address, :is_walkup, :num_floors
  def initialize ( address, has_doorman, is_walkup, num_floors )
    @address = address
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = [] #how should this be set up? 
    @floor_capacity = []
    @num_floors.times do
      @apartments.push []
      @floor_capacity.push 4
    end
  end

  def add_apartment (apartment_object, floor)
    # floor 1 is ground floor
    # NOTE: eventually...has to be able to fill up floors somehow...
    if floor <= @apartments.size && floor > 0 && space_left?(floor)
      @apartments[floor-1].push (apartment_object)
    else
      puts 'ERROR...'
    end
  end

  def space_left?(floor)
    @floor_capacity[floor-1] - @apartments[floor-1].size > 0
  end

  def count_apartments_available(floor='all')
    count = 0
    @apartments.flatten.each do |apartment|
      count += 1 if apartment.renters.empty?
    end
    count
  end

  def count_renters
    @apartments.flatten.each do |apartment|
      apartment.renters.count
    end
  end
end

class Apartment
  attr_accessor :price, :renters
  attr_reader :sqft, :num_bedrooms, :num_baths
  def initialize (sqft, num_bedrooms, num_baths, price )
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @renters = []
    @price = price
  end

  def add_renters renters
    renters.each do |renter|
      @renters.push renter
      renter.move_to self
    end
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

coop = Person.new('cooper',26,'m')
sam = Person.new('sam',30, 'm')

apt = Apartment.new(600, 1, 1, 1800)

building = Building.new('123 321 st, asdf, fdssa, USA',true,true,4)

apt.add_renters [coop,sam]
building.add_apartment(apt, 2)
building.add_apartment(apt, 2)
building.add_apartment(apt, 2)
building.add_apartment(apt, 2)
building.add_apartment(apt, 2)

p building
puts
building.apartments

