# Attributes of Apartment Class Ruby Type
# sqft  Integer
# num_bedrooms  Integer
# num_baths Integer
# renters hmmmmmm
# is_occupied?  A Method def is_occupied?
# price Float

class Apartment
  attr_accessor :num_bedrooms, :num_baths, :price

  def initialize
    @renters = []
    @is_occupied = false
    @floor = floor
  end

  def is_occupied
    @is_occupied = true
  end