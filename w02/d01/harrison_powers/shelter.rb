class Shelter
  attr_accessor :persons, :animals, :name, :location

  def initialize(name, location)
    @name = name
    @location = location
  end

  def add_animal(animal)
    @anmials ||= Array.new
    @animals << animal
  end

  def add_person(person)
    @persons ||= Array.new
    @persons << person
  def

  def remove_animal(animal)
    @animals.delete(animal)
  end

  def remove_person(person)
    @persons.delete(person)
  end
  
end