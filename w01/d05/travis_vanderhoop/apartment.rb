require 'pry'

class Apartment

  attr_accessor :sqft, :num_bedrooms, :num_baths, :renters, :price, :building

  def initialize(sqft, num_bedrooms, num_baths, price)
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @price = price
    @renters = []
  end

  def add_renter(renter)
    @renters << renter                    #
    @renter = renter
    @renter.apartment = self
  end

  def is_occupied?
    if @renters.size ==0
      false
    else
      true
    end
  end

end