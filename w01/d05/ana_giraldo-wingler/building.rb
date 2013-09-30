require 'Faker'

class Building
  attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments, :count_renters, :count_apartments_available, :renters

def initialize
  r = Random.new
  @apartments = []
  @address = Faker::Address.street_address
  @has_doorman = ["yes", "no"].sample
  @is_walkup = ["yes", "no"].sample
  @num_floors = r.rand(1..20)
end

def count_renters
  total_renters = 0
  @apartments.each do |apt|
    total_renters += apt.renters.length
  end
  return total_renters
end

def count_apartments_available
  apartments_available = 0
    @apartments.each do |apt|
       if !apt.is_occupied?
        apartments_available += 1
      end
    end
  return apartments_available
end

def count_apartments_occupied
  apartments_occupied = 0
  @apartments.each do |apt|
    if apt.is_occupied?
      apartments_occupied += 1
    end
  end
  return apartments_occupied
end

end