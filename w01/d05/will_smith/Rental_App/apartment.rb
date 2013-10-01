class Apartment
  attr_accessor :tenants, :building
  def initialize
    @tenants = []
  end

  def occupied?
    @tenants.any?
  end

  def move_in(tenant)
    @tenants.push(tenant)
    tenant.apartment = self
  end
end


#   def initialize(apartment, sqft, num_bedrooms, num_baths, renters)
#     @apartment = apartment
#     @sqft = sqft
#     @num_bedrooms = num_bedrooms
#     @num_baths = num_baths
#     @price = (@num_bedrooms + @num_baths) * @sqft
#     @is_occupied = false
#     @renters = 10
#   end
# end

# a1 = Apartment.new('1A', 700, 2, 2, 2)
# a2 = Apartment.new('1B', 900, 3, 2, 3)
# a3 = Apartment.new('1C', 500, 1, 1, 1)
# a4 = Apartment.new('2A', 700, 1, 1, 1)
# a5 = Apartment.new('2B', 1000, 3, 3, 2)
# a6 = Apartment.new('2C', 400, 1, 1, 1)
