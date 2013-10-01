class Shelter
  attr_accessor :password, :name, :location, :animals

  def initialize(username, password, name, location)
    @password = password
    @name = name
    @location = location
    @animals = Array.new
    $shelters[username] = self
  end

  def add_animal(animal)
    @animals << animal
    animal.shelter = self
    animal.owner = nil
  end

  def remove_animal(animal)
    @animals.delete(animal)
    animal.shelter = nil
  end

  def to_s
    "#{@name} is located at #{@location}"
  end

end