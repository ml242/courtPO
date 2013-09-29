class Apartment

  @count = 0
  class << self
  attr_accessor :count
  end

  attr_accessor :sqft, :num_bedrooms, :num_baths, :price

  def initialize
    @occupants = []
    self.class.count += 1
    @apartment_name = "Apartment #{self.class.count}"
  end

  @@count =+ 1

  def apartment_name
      @apartment_name
  end

  def number_of_occupants
    @occupants.length
  end
  def set_building_name(building_name) #call this method in building and pass along its name
    @my_building = building_name
  end

  def set_occupant(person)
    @occupants << person
    person.set_apt_name(@apartment_name)
  end

  def move_out(person)
    if @occupants.include?(person)
      @occupants.delete(person)
      "#{person} has moved out."
    else
      "#{person} does not currently live here."
    end
  end

end