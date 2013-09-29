class Building
  attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments, :count_renters, :count_apartments_available, :renters

def initialize
  @apartments = []
end

def count_renters
  @renter_count = @renters.length
end

def count_apartments_available
  @apartments_available = []
  #make a counter of is_occupied? => false?
end

end