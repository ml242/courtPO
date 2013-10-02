# Person:
# A person should have a name.
# A person should have an age.
# A person should have a number of children.
# A person should have a number of pets.

class Person
  attr_accessor :name, :age, :num_pets, :shelter
  def initialize(name, age, num_pets)
    @name = name
    @age = age
    @num_pets = num_pets
  end
end