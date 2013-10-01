# The shelter should display all the persons.
# The shelter should display all the animals.
require_relative 'animal'
require_relative 'person'

class Shelter

  def initialize
    @persons = {}
    @animals = {}
  end

  def create_animal(name, age, gender, species)
    create_animal = Animal.new(name, age, gender, species)
    @animals[name] = new_animal
  end

  def display_animals
    @animals.each_value do |v|
      puts v
    end
  end

  def create_person(name, number_of_children, age)
    create_person = Person.new(name, number_of_children, age)
    @persons[name] = new_person
  end

  def display_persons
    @persons.each_value do |v|
    puts v
  end
  end

end