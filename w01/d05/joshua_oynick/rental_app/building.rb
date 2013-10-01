class Building
attr_accessor :address, :has_doorman, :is_walkup, :num_floors

  def initialize(doorman, walkup, num_floors)
    @apartments = []
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
  end

  def count_renters

  end

  def count_apartments_available

  end

end


