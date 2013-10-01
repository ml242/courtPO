require_relative 'person'
require_relative 'animal'

class Shelter
  def initialize
    @people = {}
    @animals = {}
  end
# display the animals
  def display_animals
    @animals.each_value do |v|
      p v
    end
  end
  #display the people
  def display_people
    @people.each_value do |v|
      p v
    end
  end
  def add_person
    add_person = Person.new(name, age)
  end
  def add_animal
    add_animal = Animal.new(name, age, gender, species)
  end

end

p1 = Person.new('Ace', 30)
p2 = Person.new('Dan', 40)
p3 = Person.new('Melissa', 32)

a1 = Animal.new('Wolfie', 6, 'male', 'dog')
a2 = Animal.new('Violet', 2, 'female', 'dog')
a3 = Animal.new('Tula', 7, 'female', 'dog')
