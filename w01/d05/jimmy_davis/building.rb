# Atrributes of Building Class  Ruby Type
# address String
# has_doorman Boolean
# is_walkup Boolean
# num_floors  Integer
# apartments  hmmmm
# count_people  method def count_renters
# count_apartments_available  method def count_apartments_available


class Building
  attr_accessor :address, :has_doorman, :is_walkup

  def initialize
    @num_floors = num_floors
    @apartments = []
    @count_people = []
    @count_apartments_available = []
  end

  def count_renters
    # set a counter
    total_renters = 0
    # loop through the apartment array
    @apartments.each do |apartment|
    # count the number of people in each array
      total_renters = total_renters + apartment.renters.count
    end
    # return total renters
    total_renters
  end

  def count_apartments_available
    # set a counter
    total_available = 0
    # loop through the apartment array
    @apartments.each do |apt|
    # count the number of apartments that aren't occupied
      total_available += 1 if !apt.is_occupied?
    end
    # return total number
    total_available
    # apartments.map { |apt| apt.renters.size }.reduce(:+)
  end

  def inquiry_string
    "There are #{count_apartments_available} apartments available."
  end

  def to_s
    "#{address} is a cozy building!"
  end

end

