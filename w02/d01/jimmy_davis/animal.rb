# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a species.
# An animal can have multiple toys.

class Animal
  attr_accessor :name, :age, :gender, :species

  def initialize(name, age, gender, species)
    @toys = []
    @display_animals = Animal.new
    @create_animal = Animal.new
  end

  def animal_home

  end
end