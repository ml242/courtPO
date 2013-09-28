require 'pry'
require 'pry-nav'
require 'pry-remote'

class Building
  attr_accessor :address, :num_floors, :apartments

  def initialize
    @is_walkup = true
    @has_doorman = false
  end

  def give_elevator
    @is_walkup = false
  end

  def walkup?
    @is_walkup
  end

  def give_doorman
    @has_doorman = true
  end

  def doorman?
    @has_doorman
  end

  def count_people

  end

  def count_apartments_available

  end
end

b1 = Building.new

binding.pry