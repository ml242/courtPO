class Apartment
  attr_accessor :apt_id, :sqft, :num_bedrooms, :num_baths, :renters, :price

  def initialize
    #renters will be an array of person names
    @renters = []
  end

  def is_occupied?
    @renters.size > 0
  end

end
