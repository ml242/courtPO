require 'pry'
require_relative "apartment"
require_relative "person"


class Builiding
  attr_writer :address
  attr_accessor :has_doorman
  attr_accessor :is_walkup
  attr_accessor :num_floors
  #apartments??????????????

#only include the values to be given at initialize
  def initialize(address, doorman, walkup, number_of_floors)
    @address      = address
    @has_doorman  = doorman
    @is_walkup    = walkup
    @num_floors   = number_of_floors
  end

  def count_renters()
    #counts the number of people in each building
  end

  def count_apartments_available()
    #counts the number of available apartments in each building
  end


end


