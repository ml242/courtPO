require 'pry'
require_relative 'apartment_class.rb'
require_relative 'person_class.rb'""

class Building
    attr_accessor :building_address, :has_doorman, :is_walkup, :num_floors, :number_of_apartments, :apt_num,

    def initialize
        @vacant_apartments = []
        @rented = []
        @renters_names = []
    end

    def check_vacancy
        if @rented.include?(@apt_num)
            puts "This apartment has residents."
        else
            puts "This apartment is available."
    end

# method counts total number of residents in the entire building
    def count_renters
        @number_of_residents = @renters_names.size
        "There are currently #{number_of_residents} number of residents at #{@building_address}."
    end

#method counts total apartments available for rent
    def count_apartments_available
        @vacant_apartments.size
        "There are #{apartments_available} available rentals."
    end
end

b1 = Building.new
b1.building_address = "10 E. 21st Street"
b1.has_doorman = true
b1.is_walkup = false
b1.num_floors = 4
b1.number_of_apartments = 8
b1.apt_num = ["a" .. "h"]

b2 = Building.new
b2.building_address = "902 Broadway"
b2.has_doorman = true
b2.is_walkup = false
b2.num_floors = 20
b2.number_of_apartments = 40
b2.apt_num = [ 1..40 ]

end