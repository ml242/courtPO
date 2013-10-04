<<<<<<< HEAD
require 'pry'
require 'pry-nav'
require 'pry-remote'

class Building
    attr_accessor :address, :apartments
    def initialize(address, num_floors, has_doorman, is_walkup, apartments)
        @address = address
        @num_floors = 2
        @has_doorman = false
        @is_walkup = true
        @apartments = apartments
    end

      def count_renters
        renters = 0
        @apartments.each do |floor, apartments|
          @apartments[floor].each do |apartment|
            #binding.pry
            renters += apartment.renters.count
          end
        end
        renters
      end

    def count_apartments_available (renters, apartments)
    renters - apartments
    end
end

#Add 2 buildings
b1 = Building.new('333 West End Ave', 2, false, true, 6)
b2 = Building.new('118 East 1st Street', 2, true, false, 6)
=======
class Building
    attr_accessor :name, :apartments
    def initialize
        @apartments = []
#         @address = address
#         @num_floors = 2
#         @has_doorman = false
#         @is_walkup = true
#         @apartments = apartments
    end

    def count_people
        # set a counter
        total_renters = 0
        # loop through the apartment array
        @apartments.each do |apartment|
        # count the number of people in each array
        apartment
        binding.pry
        #return the total renters
end

#       def count_renters
#         renters = 0
#         @apartments.each do |floor, apartments|
#           @apartments[floor].each do |apartment|
#             #binding.pry
#             renters += apartment.renters.count
#           end
#         end
#         renters
#       end

#     def count_apartments_available (renters, apartments)
#     renters - apartments
#     end
# end

# #Add 2 buildings
# b1 = Building.new('333 West End Ave', 2, false, true, 6)
# b2 = Building.new('118 East 1st Street', 2, true, false, 6)
>>>>>>> master

