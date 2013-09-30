require 'pry'
require_relative 'building_class.rb'
require_relative 'person_class.rb'""

class Apartment
    attr_accessor :@apt_num, :@sqft, :@num_bedrooms, :@num_baths, :@building_address, :@price, :@renters_names

    def initialize
        @price = (2 * @sqft) + (500 * @num_bedrooms) + (500 * @num_baths)
    end

    def is_rented?
        if @renters_names.length == 0
            "#{apt_num}  has been rented and is no longer available."
    end

    def advertise
        if @renters_names.length == 0
            puts "#{building_address}, #{apt_num} is available for rent."
            puts "More Info: #{sqft} sq. feet, #{num_bedrooms} br(s), #{num_baths} baths."
            puts "Rent price: $#{price}"
        else
            puts "#{apt_num} has been rented and is no longer available."
        end
end

a1 = Apartment.new
a1.apt_num = "a"
a1.sqft = 500
a1.num_baths = 1
a1.num_bedrooms = 1
a1.building_address = b1.building_address

a2 = Apartment.new
a2.apt_num = "d"
a2.sqft = 1000
a2.num_baths = 1
a2.num_bedrooms = 2
a2.building_address = b1.building_address

a3 = Apartment.new
a3.apt_num = "34"
a3.sqft = 500
a3.num_baths = 1
a3.num_bedrooms = 1
a3.building_address = b2.building_address

a4 = Apartment.new
a4.apt_num = "12"
a4.sqft = 760
a4.num_baths = 1.5
a4.num_bedrooms = 2
a4.building_address = b2.building_address



