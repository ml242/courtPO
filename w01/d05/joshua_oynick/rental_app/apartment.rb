class Apartment
  attr_accessor :sqft, :num_bedrooms, :num_baths, :renters, :price

 def initialize(sqft, num_bedrooms, num_baths, price, building)
    @renters = []
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @price = price
    @building = building
  end

  def is_occupied?
    !@renters.empty?
  end

end