class Apartment
  attr_accessor :price, :sqft, :num_beds, :num_baths, :renters
  def initialize(price, sqft, num_beds, num_baths)
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
    if @renters.length != 0
      @occupied = "is currently occupied"
    else
      @occupied = "is currently available"
    end
  end
  def move_in(*renters)
    renters.each do |tenant|
      @renters << tenant
    end
  end
  def move_out(*renters)
    renters.each do |tenant|
      @renters.delete(tenant)
    end
  end
  def is_occupied?
    !@renters.empty?
  end

  def to_s
    "This apartment is #{@price}, #{@sqft} square feet, has #{@num_baths} baths and #{@num_beds} beds, and #{@occupied}."
  end
end