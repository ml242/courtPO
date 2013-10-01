class Shelter
  attr_accessor :animals
  attr_accessor :people
  attr_accessor :adopted_pets

  def initialize
    @animals = {}
    @people = {}
    @adopted_pets = {}
  end
  def adopt(animal, person)
    pet = @animals[animal]
    @people[person].pets << pet
    @adopted_pets[animal] = pet
    @animals.delete(pet.name)
    @people[person].pets.flatten!
  end
  def return_pet(animal, person)
    @animals[animal] = adopted_pets.delete(animal)
    @people[person].pets << animal
  end
end