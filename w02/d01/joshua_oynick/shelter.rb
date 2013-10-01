# Define shelter as a class
class Shelter
  attr_accessor :people, :animals

  def initialize
    @people = []
    @animals = []
  end

  def add_people(person)
    @people.push(person)
    person.shelter = self
  end

  def add_animals(animal)
    @animals.push(animal)
    animal.shelter = self
  end

  def print_people
    @people.each do |person|
    puts person.people
  end

  def print_animals
    @animals.each do |animal|
    puts animal.animals
  end
end
