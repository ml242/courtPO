class Apartment
  attr_accessor :price, :sqft, :num_beds, :num_baths, :renters, :apartment_number
  def initialize(apartment_number, price, sqft, num_beds, num_baths)
    @apartment_number = apartment_number
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @tenants = []
    if @tenants.length != 0
      @occupied = "is currently occupied"
    else
      @occupied = "is currently available"
    end
  end
  def move_in(*renters)
    renters.each do |tenant|
      @tenants << tenant
    end
  end
  def move_out(*renters)
    renters.each do |tenant|
      @tenants.delete(tenant)
    end
  end
  def is_occupied?
    !@tenants.empty?
  end

  def to_s
    "This apartment is #{@price}, #{@sqft} square feet, has #{@num_baths} baths and #{@num_beds} beds, and #{@occupied}."
  end
end