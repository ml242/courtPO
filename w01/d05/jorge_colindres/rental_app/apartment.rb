require 'pry'
require 'pry-nav'
require 'pry-remote'

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

  def show_apartment
    @is_occupied == true ? occupied = "occupied" : occupied = "vacant"
    @renters == [] ? renters = "Nobody" : renters = @renters.join(", ")
    "This is apartment #{@apartment_id}. It is currently #{occupied}. It has #{@sqft} square feet, #{@num_bedrooms} bedrooms, #{@num_baths} bathrooms, and it costs $#{@price}. #{renters} currently lives here."
  end

end