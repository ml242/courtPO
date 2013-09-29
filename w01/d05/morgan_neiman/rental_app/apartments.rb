class Apartment
  attr_accessor :price, :sqft, :num_beds, :num_baths, :renters, :apartment_number, :building
  def initialize(apartment_number, sqft, num_beds, num_baths)
    @apartment_number = apartment_number
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @price = (50 * sqft) + (1000 * num_baths) + (2000 * num_beds)
    @tenants = {}
    @building = ""
    if @tenants.length != 0
      @occupied = "is currently occupied"
    else
      @occupied = "is currently available"
    end

  end
  def is_occupied?
    !@tenants.empty?
  end

  def to_s
    "This apartment is #{@price}, #{@sqft} square feet, has #{@num_baths} baths and #{@num_beds} beds, and #{@occupied}."
  end
end