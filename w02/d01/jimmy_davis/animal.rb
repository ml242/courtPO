# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a species.
# An animal can have multiple toys.

class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
    @toys = []
    @name = name
    @age = age
    @gender = gender
    @species = species
  end

  def create_animal(name, age, gender, species)
    create_animal = Animal.new(name, age, gender, species)
    @animals[name] = new_animal
  end

  def display_animals
    @animals.each_value do |v|
      p v
  end
end