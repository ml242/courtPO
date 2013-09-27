class Apartment
  attr_accessor :price, :sqft, :num_beds, :num_baths, :renters
  attr_reader :renters
  def initialize(price, sqft, num_beds, num_baths)
    @price = price.to_f
    @sqft = sqft.to_i
    @num_beds = num_beds
    @num_baths = num_baths.to_i
    @renters = []
  end
  def move_in(*renters)
    renters.each do |tenant|
      @renters << tenant
    end
  end
  def is_occupied?
    !@renters.empty?
  end
end