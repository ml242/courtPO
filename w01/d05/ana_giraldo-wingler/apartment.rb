class Apartment
  attr_accessor :sqft, :num_bedrooms, :num_baths, :renters, :is_occupied, :price

def initialize
  r = Random.new
  @sqft = r.rand(500..2000)
  @num_bedrooms = r.rand(1..5)
  @num_baths = r.rand(1..4)
  @renters = []
  @price = r.rand(1000..9000)
end

def is_occupied?
  @renters.any?
end

end