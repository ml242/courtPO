require 'pry'
require_relative "building"
require_relative "person"


class Apartment
  attr_accessor :sqft, :num_bedrooms, :num_baths, :price, :renters


#only include the values to be given at initialize
  def initialize(square_footage, bedrooms, bathrooms, price)
    @sqft         = square_footage
    @num_bedrooms = bedrooms
    @num_baths    = bathrooms
    @price        = price
    @renters      = []
  end

  def is_occupied?(apartment_list)
    #if apt_name.renters > 0
      # apartment_list.each {|apt| sum += apt.renters}
  end

end



# TRIED TO CREATE A METHOD TO AUTO-CREATE THE APARTMENTS, got an error using the apt_num as the assignment for the Apartments.new()
# def create_apartments(apt_to_create )
#   apt_to_create.keys.each do [apt_num]
#     apt_num.to_s = Apartment.new(apt_to_create.values[0],
#                             apt_to_create.values[1],
#                             apt_to_create.values[2],
#                             apt_to_create.values[3],
#                             apt_to_create.values[4],)
#   end
# end


# apt_to_create = {
#   "A1"  => [750,  1, 1, 1700, 2],
#   "A2"  => [1000, 1, 2, 2200, 2],
#   "A3"  => [1100, 2, 2, 2600, 0],
#   "A4"  => [1400, 3, 2, 3500, 4],
# }




A1 = Apartment.new(750,  2, 1, 1700, 1)
B1 = Apartment.new(1000, 1, 2, 2200, 2)
C1 = Apartment.new(1100, 2, 2, 2600, 0)
D1 = Apartment.new(1400, 3, 2, 3500, 4)

A2 = Apartment.new(1750, 3, 2, 4000, 3)
B2 = Apartment.new(1100, 2, 2, 2600, 2)
C2 = Apartment.new(1400, 3, 2, 3500, 0)

A3 = Apartment.new(1750, 3, 2, 4000, 0)
B3 = Apartment.new(2500, 5, 4, 6100, 5)



####------------------------------------------------------
# Phil's code











