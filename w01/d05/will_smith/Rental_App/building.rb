require 'pry'
require 'pry-nav'
require 'pry-remote'

class Building
    attr_accessor :address, :apartments
    attr_reader :num_floors, :has_doorman, :is_walkup,
    def initialize(address, num_floors, has_doorman, is_walkup, apartments)
        @address = address
        @num_floors = 3
        @has_doorman = false
        @is_walkup = true
        @apartments = []
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
b1 = Building.new('333 West End Avenue', 6)
b2 = Building.new('118 East 1st Street', 6)

