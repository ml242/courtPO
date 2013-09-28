class Apartment
  attr_accessor :apartment_id, :sqft, :num_bedrooms, :num_baths, :renters, :price

  def initialize(apartment_id)
    @apartment_id = apartment_id
    @is_occupied = false
    @renters = []
  end

  def occupy
    @is_occupied = true unless @renters == []
  end

  def occupied?
    @is_occupied
  end

  def get_apartment_info
    apartment_info = Hash.new
    apartment_info[:is_occupied] = @is_occupied
    apartment_info[:sqft] = @sqft
    apartment_info[:num_bedrooms] = @num_bedrooms
    apartment_info[:num_baths] = @num_baths
    apartment_info[:renters] = @renters
    apartment_info[:price] = @price
    apartment_info
  end

  def to_s
    "Apartment Info -- Occuped: #{@is_occupied}, Sqft: #{@sqft}, Beds: #{@num_bedrooms}, Baths: #{@num_baths}, Tennants: #{@renters}, Price: #{@price}"
  end
end