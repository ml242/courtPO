class Shelter
  attr_accessor :persons, :animals

  def initialize
    @persons = []
    @animals = []
  end

  def adopt_animal(person, animal)
    person.num_pets += 1
   @animals.delete(animal)
  end

# did not include person as a parameter
# assumes animals can be given up for adoption without asking the
# owner for personal information
  def put_animal_up_for_adoption(animal)
    #person.num_pets -= 1
    @animals.push(animal)
  end

  def accept_new_animal(name, age, gender, species)
    a = Animal.new
    a.name = name
    a.age = age
    a.gender = gender
    a.species = species
    @animals.push(a)
  end

#should refactor display_persons and display_animals

# this is where i got confused
# should it be @persons.each or persons.each or self.persons?
  def display_persons
    person_names = []
    persons.each { |person| person_names << person.name }
    puts "The following persons work here #{person_names}"
  end

# displays anaimals in the shelter
# those within the @animals array
def display_animals
  animal_names = []
  animals.each { |animal| animal_names << animal.name}
  puts "The following animals could be yours today! #{animal_names}"

end




end