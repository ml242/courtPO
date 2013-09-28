class Building
  attr_accessor :apartments, :has_doorman
  attr_reader :address, :is_walkup, :num_floors
  def initialize ( address, has_doorman, is_walkup, num_floors )
    @address = address
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = [] #how should this be set up? 
    @num_floors.times { @apartments.push [] }  # fill up apartment
                                                # with empty floors
  end

  def add_apartment (apartment_object, floor)
    # NOTE: eventually...has to be able to fill up floors somehow...
    if floor <= @apartments.size && floor > 0
      @apartments[floor-1].push (apartment_object)
    else
      #ERROR
  end

  def count_renters
  end

  def count_apartments_available
  end
end

class Apartment
  attr_accessor :is_occupied, :renters, :price
  attr_reader :sqft, :num_bedrooms, :num_baths
  def initialize (sqft, num_bedrooms, num_baths, price )
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @renters = renters
    @is_occupied = is_occupied
    @price = price
  end
end

class Person  
  attr_accessor :apartment
  def initialize (name, age, gender)
    @name = name
    @age = age
    @gender = gender

    @apartment #???
  end
end

Person.new('cooper',26,'m')
Person.new('sam',30, 'm')

Apartment.new(600, 1, 1, 1800)
