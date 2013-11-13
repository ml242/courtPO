class Building
	attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments, :map

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
    @apartments.each do |x, y| y.each do |z| i += z.renters.count if z.is_occupied? == true end end
    i
  end

  def count_apartments_available
    i = 0
    @apartments.each do |x, y| y.each do |z| i += 1 if z.is_occupied? == false end end
    i
  end

  def list_renters
    i = Hash.new { |x,y| x[y] = [] }
    @apartments.each do |x, y| y.each do |z| i[z.number] << z.renters.join(", ") if z.is_occupied? == true end end
    i
  end

  def list_apartments_available
    i = []
    @apartments.each do |x, y| y.each do |z| i << z if z.is_occupied? == false end end
    i
  end

  def show_building
    $map ||= Array.new
    @map_item = ''
    num_3_floors = self.num_floors / 3
    @map_item += "'--------'.color('ff00ff')\n"
    num_3_floors.times do
      @map_item += "'|[]  []|'.color('ff0000')\n"
      @map_item += "'|[]  []|'.color('00ff00')\n"
      @map_item += "'|[]  []|'.color('ff00ff')\n"
    end
    @map_item += "'|  {}  |'.color('f0f0f0')\n"
    @map_item += "'| _-_  |'.color('ffff00')\n\n"
    $map[self.address] = @map_item
  end
end