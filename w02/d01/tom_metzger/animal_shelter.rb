require "pry"
require_relative "animals"
require_relative "persons"

# METHODS---------------------------------------------

class Shelter

  def initialize(shelter_name)
    @shelter_name = name
    @animals      = []
    @people       = []
  end

  def add_person(name, num_of_children, age) #, current_pets
    #prompt user for inputs for Person.new
    @shelter[:people] << Person.new(name, num_of_children, age) #, current_pets
    # call Person.new
  end


  def add_animal(name, age, gender, species)
    #prompt user for inputs for Animal.new
    # call Animal.new
  end


  def display_people()
    puts @shelter[people]
  end

  def display_animals()
    puts @shelter[animals]
  end

end

# VARIABLES-------------------------------------------

@shelter = {
  :animals  => [],
  :people   => []
}





#CODE-------------------------------------------------


add_person("tom", 2, 35)

add_animal("bubbles", 2, "female", "cat")


