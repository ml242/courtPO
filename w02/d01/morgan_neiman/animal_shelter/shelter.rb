require_relative 'person'
require_relative 'animal'

class Shelter
  def initialize
    @people = {}
    @animals = {}
  end
  def new_person(name, num_children, age)
    new_person = Person.new(name, num_children, age)
    @people[name] = new_person
  end
  def new_animal(name, age, gender, species)
    new_animal = Animal.new(name, age, gender, species)
    @animals[name] = new_animal
  end
  def display_animals
    @animals.each_value do |v|
      p v
    end
  end
  def display_people
    @people.each_value do |v|
      p v
    end
  end
  def adopt_animal(name, species, person_name)
    @people[person_name].pets[name] = @animals[name]
    @animals.delete(name)
  end
  def give_up_animal(animal_name, person_name)
    @animals[animal_name] = @people[person_name].pets[animal_name]
    @people[person_name].pets.delete(animal_name)
  end
end