class Apartment

  @count = 0
  class << self
  attr_accessor :count
  end

  attr_accessor :sqft, :num_bedrooms, :num_baths, :price

  def initialize
    @renters = []
    self.class.count += 1
    @apartment_name = "Apartment #{self.class.count}"
  end

  @@count =+ 1

  def apartment_name
      @apartment_name
  end

  def number_of_occupants
    @renters.length
  end

  def is_occupied?
    if @renters.empty?
      false
    else
      true
    end
  end

  def set_building_name(building_name, floor) #call this method in building and pass along its name
    @my_building = "#{building_name}, Floor: #{floor}"
  end

  def set_occupant(person)
    @renters << person
    person.set_apt_name(@apartment_name)
  end

  def move_out(person)
    if @renters.include?(person)
      @renters.delete(person)
      "#{person} has moved out."
    else
      "#{person} does not currently live here."
    end
  end

end