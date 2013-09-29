class Apartment
  attr_accessor :sqft, :num_bedrooms, :num_baths, :renters, :is_occupied, :price

def initialize
  @renters = []
end

def is_occupied?
  @renters.any?
end

end