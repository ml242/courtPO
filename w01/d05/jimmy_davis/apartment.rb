# Attributes of Apartment Class Ruby Type
# sqft  Integer
# num_bedrooms  Integer
# num_baths Integer
# renters hmmmmmm
# is_occupied?  A Method def is_occupied?
# price Float

class Apartment
  attr_accessor :num_bedrooms, :num_baths, :price, :building

  def initialize
    @renters = []
    @is_occupied = false
    @floor = floor
  end

  def is_occupied?
    @renters.any?
  end

  def move_in(tenant)
    @renters.push(tenant)
    tenant.apartment = self
  end
end