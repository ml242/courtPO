require 'pry'

class Shelter

  attr_accessor :clients, :animals

  def initialize(name)
    @name = name
    @clients = []
    @animals = []
  end

  def add_animal(animal)
    @animals << animal
  end

  def add_client(new_person)
    @clients<< new_person
  end

  def remove_animal(animal)
    @animals.delete(animal)
  end

  #iterates over every animal in the shelter and prints them pretty, along with corresponding index value for the user to enter
  def display_all_animals()
    @animals.each_with_index do |animal, index|
      p animal.pretty_print + "To adopt #{animal.name}, press #{index}."
     end
  end

end