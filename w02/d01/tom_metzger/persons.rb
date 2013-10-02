require "pry"

# METHODS---------------------------------------------

class Person
  attr_accessor :name, :children, :age, :pets, :number_of_pets

  def initialize(name, num_of_children, age) #, current_pets
    @name           = name
    @children       = num_of_children
    @age            = age
    @pets           = []
    @number_of_pets = @pets.length
  end

  def number_of_pets(person)
    person.pets.length
  end

end


# VARIABLES-------------------------------------------




#CODE-------------------------------------------------






