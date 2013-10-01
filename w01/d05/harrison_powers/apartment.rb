class Apartment
	attr_accessor :sqft, :num_bedrooms, :num_baths, :price, :renters, :number, :address
  attr_reader :is_occupied

  @count = 0
  class << self
    attr_accessor :count
  end

  def initialize(sqft, num_bedrooms, num_baths)
    @sqft = sqft #integer
    @num_bedrooms = num_bedrooms #integer
    @num_baths = num_baths #integer
    @price = sqft * num_bedrooms * num_baths * 2 #float
    @renters = Array.new
    self.class.count += 1
  end

  def add_renter(name)
    @renters << name
    name.apartment = self
  end

  def evict(name)
    @renters.delete(name)
    name.apartment = nil
  end

  def is_occupied?
    @renters.count != 0
  end
end