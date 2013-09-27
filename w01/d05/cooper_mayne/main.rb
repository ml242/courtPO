class Building
  attr_accessor :apartments
  def initialize ( address, has_doorman, is_walkup, num_floors )
    @address = address
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = []
  end
end

class Apartment
  def initialize (sqft, num_bedrooms, num_baths, is_occupied, price )
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @is_occupied = is_occupied
    @price = price
  end
end

class Person
  attr_accessor :apartment
  def initialize
    @name = name
    @age = age
    @gender = gender
  end
end
