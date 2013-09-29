require 'pry'
require_relative "building"
require_relative "person"


class Apartment
  attr_accessor :sqft
  attr_accessor :num_bedrooms
  attr_accessor :num_baths
  attr_accessor :price
  #RENTERS??????????????

#only include the values to be given at initialize
  def initialize(square_footage, bedrooms, bathrooms, price, renters)
    @sqft         = square_footage
    @num_bedrooms = bedrooms
    @num_baths    = bathrooms
    @price        = price
    #Renters = renters
  end

  def is_occupied?()
    #allows user to query if apartment is occupied or not
  end

end





