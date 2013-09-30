class Apartment
  attr_accessor :price, :renters
  attr_reader :sqft, :num_bedrooms, :num_baths

  def initialize (sqft, num_bedrooms, num_baths )
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @renters = []
    @price = 1500*@num_bedrooms + 500*@num_baths
  end

  def add_renter renter  #takes an array of renters
      @renters.push renter
      renter.move_to self
  end
  
  def remove_renters
    @renters = []
  end

  def is_occupied?
    @renters.count > 0
  end
end

