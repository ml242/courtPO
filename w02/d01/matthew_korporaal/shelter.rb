class Shelter
  attr_accessor :animals, :humans

  def initialize
    @humans = []
    @animals = []
    @animals_on_hand = 0
    @humans_in_db = 0
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

  def add_human(person)
    @humans_in_db += 1
    @humans << person
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

  def to_s
    puts "Humans in Database: #{@humans_in_db}".color("E80C9B")
    puts "Animals in Database: #{@animals_on_hand}".color("E80C9B")
  end
end
