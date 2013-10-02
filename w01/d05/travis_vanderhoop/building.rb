require 'pry'

class Building
  # binding.pry
  attr_accessor :is_walkup, :num_floors, :apartments

  def initialize(address, doorman, walkup, num_floors)
    @address = address
    @doorman = doorman
    @is_walkup = walkup
    @num_floors = num_floors
    @apartments = []
  end


  def add_apt(apartment)
    @apartments << apartment
    @apartment = apartment
    @apartment.building = self
  end

  #iterates through the apartments in the building, finding the number of tenants the apartment houses. Each value is added to the sum.
  def count_total_renters
    sum = 0
    @apartments.each { |apartment| sum = sum + apartment.renters.size }
    sum
  end

  #To find the total number of vacant apartments, I would walk through the building checking each apartment. If the apartment didn't have anyone living in it, I would declare it vacant. And add 1 to the sum of vacant apartments.
  def count_apartments_available
    vacant_apartments=0
    @apartments.each { |apartment|
      if apartment.renters.size == 0
        vacant_apartments = vacant_apartments + 1
      end
    }
    vacant_apartments
  end

  def count_filled_rooms
    filled_rooms = 0
    @apartments.each { |apartment|
    if apartment.renters.size >= 1
      filled_rooms = filled_rooms + 1
     end
    }
    filled_rooms
  end

end

