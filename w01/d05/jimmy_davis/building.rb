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
    renters = @count_people.length
    how_many_renters = "This building is renting to #{renters} people."
  end

  def count count_apartments_available
    available = @apartments.length - @count_apartments_available.length
    apartments_available = "This building has #{available} apartments available."
  end

  puts how_many_renters
  purs apartments_available