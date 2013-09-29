class Building
	attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments

  @count = 0
  class << self
    attr_accessor :count
  end

  def initialize(address, has_doorman, is_walkup, num_floors)
    @address = address #string
    @has_doorman = has_doorman #boolean
    @is_walkup = is_walkup #boolean
    @num_floors = num_floors #integer
    @apartments = Hash.new { |x,y| x[y] = [] }
    self.class.count += 1
  end

  def add_apartment(floor, apartment)
    @apartments[floor] << apartment
  end

  def count_renters
    i = 0
    @apartments.each do |x, y| y.each do |z| i += 1 if z.is_occupied? == true end end
    i
  end

  def count_apartments_available
    i = 0
    @apartments.each do |x, y| y.each do |z| i += 1 if z.is_occupied? == false end end
    i
  end

end