class Animal
  attr_accessor :name, :age, :gender, :species, :toys, :shelter
  def initialize(name,age,gender,species)
    @name=name
    @age=age
    @gender=gender
    @species=species
    @toys=[]
  end
end

class Person
  attr_accessor :name, :children, :age, :pets
  def initialize(name,age)
    @name=name
    @age=age
    @children=[]
    @pets=[]
  end

  def adopt_animal (animal)
    animal.shelter.remove_animal(animal)
    animal.shelter = nil
    @pets << animal
    
  end
end

class Shelter
  attr_accessor :people, :animals, :adoption_list
  def initialize
    @adoption_list = []
    @people = []
    @animals = []
  end

  def add_person person
    @people << person
  end

  def remove_person person
    @people.delete person
  end

  def add_animal (animal)
    animal.shelter = self
    @animals << animal
  end

  def put_up_for_adoption (animal)
    animal.shelter = nil
    @adoption_list << animal
  end

  def remove_animal (animal)
    @adoption_list.delete(animal) if @adoption_list.include?(animal)
    @animals.delete animal
  end
end
