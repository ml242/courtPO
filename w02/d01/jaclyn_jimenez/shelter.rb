#Later: Shelter should display all persons and animals
# animal list changes based on adoption status

class Shelter
  attr_accessor :name

  def initialize(name)
    @name = name
    @people = []
    @animals = []
  end

  def add_person(person)
    @people << person
  end

  def list_people
    @people.to_s
  end

  def list_animals
  end

end