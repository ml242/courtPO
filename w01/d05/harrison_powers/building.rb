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
    @num_floors = num_floors
    @apartments = Hash.new { |x,y| x[y] = [] }
    self.class.count += 1
  end

  def add_apartment(floor, number, apartment)
    @apartments[floor] << apartment
    apartment.number = number
    apartment.address = self.address
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

  def list_renters
    i = Hash.new { |x,y| x[y] = [] }
    @apartments.each do |x, y| y.each do |z| i[z.number] << z.renter.name if z.is_occupied? == true end end
    i
  end

  def list_apartments_available
    i = []
    @apartments.each do |x, y| y.each do |z| i << z if z.is_occupied? == false end end
    i
  end

  def show_building
    num_3_floors = self.num_floors / 3
    puts "--------".color('ff00ff')
    num_3_floors.times do
      puts "|[]  []|".color('ff0000')
      puts "|[]  []|".color('00ff00')
      puts "|[]  []|".color('ff00ff')
    end
    puts "|  {}  |".color('f0f0f0')
    puts "| _-_  |".color('ffff00')
  end
end