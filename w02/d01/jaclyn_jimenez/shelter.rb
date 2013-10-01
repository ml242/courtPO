#Later: Shelter should display all persons and animals
# animal list changes based on adoption status

class Shelter
  attr_accessor :name

  def initialize(name)
    @name = name
    @people = []
    @animals = []
    @animal_names = []
    @people_names = []
  end

  def add_person(person)
    @people << person
  end

  def add_animal(animal)
    @animals << animal
  end

  def list_people
    @people.each do |person|
      @people_names << person.name
    end
    @people_names.join ", "
  end

  def list_animals
    @animals.each do |animal|
      @animal_names << animal.name
    end
    @animal_names.join ", "
  end

  def shelter_info
    "Name: #{@name}
    People: #{list_people}
    Animals: #{list_animals}"
  end
end