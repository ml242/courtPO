class Shelter
  attr_accessor :animals

  def initialize
    @humans = []
    @animals = []
    @animals_on_hand = 0
  end

  def num_animals_to_adopt
    @animals.length
  end

  def num_pet_owners
    @humans.length
  end

  def add_animal(animal)
    @animals_on_hand += 1
    @animals << animal
  end

  def pet_adoption(human, animal)
    human.adopt_pet(animal)
    animal.get_adopted
    @humans << human
    @animals << animal
    @animals_on_hand -= 1
  end

  def pet_abandon(human, animal)
    @animals_on_hand += 1
    human.abandon_pet(animal)
    @animals << animal
  end
end
