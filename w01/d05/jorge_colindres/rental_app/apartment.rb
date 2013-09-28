require 'pry'
require 'pry-nav'
require 'pry-remote'

class Apartment
  attr_accessor :apartment_id, :sqft, :num_bedrooms, :num_baths, :renters
  attr_reader :price

  def initialize(apartment_id, sqft, num_bedrooms, num_baths)
    @apartment_id = apartment_id
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @price = (@num_bedrooms + @num_baths) * @sqft
    @is_occupied = false
    @renters = []
    @renter_genders = []
  end

  def renters=(renters)
    renters.each do |renter|
      @renters << renter.name
      @renter_genders << renter.gender
    end
    @renters
  end

  def occupy
    @is_occupied = true unless @renters == []
  end

  def occupied?
    @is_occupied
  end

  def get_apartment_info
    apartment_info = {}
    apartment_info[:is_occupied] = @is_occupied
    apartment_info[:sqft] = @sqft
    apartment_info[:num_bedrooms] = @num_bedrooms
    apartment_info[:num_baths] = @num_baths
    apartment_info[:renters] = @renters
    apartment_info[:price] = @price
    apartment_info
  end

  def get_gender_ratio
    men = 0
    women = 0
    @renter_genders.each do |gender|
      gender == "female" ? women += 1 : men += 1
    end
    if women != 1 && men != 1
      "There are #{women} women and #{men} men living in this apartment."
    elsif women == 1 && men != 1
      "There is #{women} woman and #{men} men living in this apartment."
    elsif women != 1 && men == 1
      "There are #{women} women and #{men} man living in this apartment."
    else
      "There is #{women} woman and #{men} man living in this apartment."
    end
  end

  def show_apartment
    @is_occupied == true ? occupied = "occupied" : occupied = "vacant"
    @renters == [] ? renters = "Nobody" : renters = @renters.join(" and ")
    "This is apartment #{@apartment_id}. It is currently #{occupied}. It has #{@sqft} square feet, #{@num_bedrooms} bedrooms, #{@num_baths} bathrooms, and it costs $#{@price}. #{renters} currently live here."
  end
end