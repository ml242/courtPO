require 'pry'

class Person

  attr_accessor :name, :children, :age, :pets

  def initialize(name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = number_of_pets
    @pets = []
  end

#=====================================================

  def adopt(new_pet)
    pets << new_pet                               #adds the pet to the person's household
  end

  def give_up_animal(animal)
     @pets.delete(animal)                         #removed the animal from the person's household
  end

end