require "pry"
require_relative "animals"
require_relative "persons"

# METHODS---------------------------------------------

class Shelter
    attr_accessor :shelter_name, :animals, :people

  def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals      = []
    @people       = []
  end

  def add_person(shelter_name, name, num_of_children, age) #, current_pets
    #prompt user for inputs for Person.new
     shelter_name.people << Person.new(name, num_of_children, age) #, current_pets
    # call Person.new
  end

  def add_animal(name, age, gender, species)
    #prompt user for inputs for Animal.new
    # call Animal.new
  end

  def display_people(shelter_name)
    puts shelter_name.people
  end

  def display_animals(shelter_name)
    puts shelter_name.animals
  end

  def adopt(person, shelter)
    person.pets << shelter.animals.pop
  end

  def surrender(person, shelter)
    shelter.animals << person.pets.pop
  end

end

# VARIABLES-------------------------------------------



#CODE-------------------------------------------------

happi_tails = Shelter.new("Happi Tails")


p1 = Person.new("tom", 2, 35)
p2 = Person.new("joe", 0, 22)
p3 = Person.new("jen", 4, 44)
p4 = Person.new("sally", 0, 30)
happi_tails.people.push(p1, p2, p3, p4)




a1 = Animal.new("bubbles",  2,  "female", "cat")
a2 = Animal.new("hank",     7,  "male",   "dog")
a3 = Animal.new("frog",     4,  "male",   "cat")
a4 = Animal.new("tweets",   11, "female", "bird")
a5 = Animal.new("rocky",    1,  "male",   "turtle")

a6 = Animal.new("horace",   13, "male",   "horse")
a7 = Animal.new("snickers", 6,  "female",   "cat")
happi_tails.animals.push(a1, a2, a3, a4, a5)


p3.pets << a6
p4.pest << a7



adopt(p3, happi_tails)

surrender(p3, happi_tails)


