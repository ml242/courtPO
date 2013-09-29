class Apartment
  attr_reader :sqft
  attr_reader :num_bedrooms
  attr_reader :num_baths
  attr_accessor :renters
  attr_accessor :is_occupied
  attr_accessor :price

  def initialize(sqft, num_bedrooms, num_baths, price, building, floor)
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @renters = []
    @is_occupied = is_occupied?
    @price = price
    @building = building
    @floor = floor
    building.apartments[@floor] << self
  end

  def is_occupied?
    @renters != []
  end
end
