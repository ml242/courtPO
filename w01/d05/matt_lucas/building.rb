require 'pry'
require_relative 'car'
require_relative 'person'


class Building
  attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments
  def initialize
  @ct_people  = []
  @ct_apt_available = []
  end

  def ct_people()
    return_ct.to_i = @ct_people.full?
    apt_pop = return_ct.to_i
  end
end


apt_pop = ct_people(@ct_people.lenght)