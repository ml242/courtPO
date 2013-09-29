require 'pry'

class Building

  attr_reader :address
  attr_reader :has_doorman
  attr_reader :is_walkup
  attr_reader :num_floors
  attr_reader :apartments
  attr_accessor :count_people
  attr_accessor :count_appartments_available

  def intialize(address, has_doorman, is_walkup, num_floors)
    @address = address
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = {}
    x = 1
    num_floors.times do
      @apartments[x] = []
      x+=1
    end
    @count_people = count_people
    @count_appartments_available = count_appartments_available
  end

  def count_people
    []
  end
  def count_apartments
    binding.pry
    apartments_list = @apartments.values.flatten
    apartments_list.compact.length
  end

  def count_appartments_available
    [].length
  end
end