class Apartment
  attr_accessor :sqft, :num_bedrooms, :num_baths, :price

  def initialize
    @occupants = []
  end

  def is_occupied?
    @occupants.empty?
  end

  def set_occupant(person)
    @occupants << person
    "#{person} has moved in. This apartment contains #{@occupants}"
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