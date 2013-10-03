class Builiding
  attr_writer :address
  attr_accessor :has_doorman, :is_walkup, :num_floors, :apartments

#only include the values to be given at initialize
  def initialize(address, doorman, walkup, number_of_floors)
    @address      = {address => {}}
    @has_doorman  = doorman
    @is_walkup    = walkup
    @num_floors  = number_of_floors
    @apartments  = {}
  end