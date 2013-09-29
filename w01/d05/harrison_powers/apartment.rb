class Apartment
	attr_accessor :sqft, :num_bedrooms, :num_baths, :price, :renter, :number, :address
  attr_reader :is_occupied

  @count = 0
  class << self
    attr_accessor :count
  end

  def initialize(sqft, num_bedrooms, num_baths, price)
    @sqft = sqft #integer
    @num_bedrooms = num_bedrooms #integer
    @num_baths = num_baths #integer
    @price = price #float
    self.class.count += 1
  end

  def add_renter(name)
    @renter = name
    @renter.apartment = self
  end

  def evict
    @renter.apartment = nil
    @renter = nil
  end

  def is_occupied?
    self.renter != nil
  end
end