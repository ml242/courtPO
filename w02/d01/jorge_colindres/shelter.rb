class Shelter
  attr_reader :name, :people, :animals

  def initialize
    @name = "Happi Tails"
    @people = []
    @animals = {
      "bunny" => [],
      "cat" => [],
      "dog" => []
    }
  end

  def search_animals(species)
    species_array = @animals[species]
    species_array.sample
  end

  def give_animal(animal, person)
    species = @animals[animal.species]
    animal_to_be_adopt = nil
    species.each do |individual|
      if animal == individual
        animal_to_be_adopt = individual
      end
    end
    species.delete animal
    person.adopt_animal(animal_to_be_adopt)
  end

  def take_in_animal(animal)
    species = @animals[animal.species]
    species << animal
  end

  def add_person(person)
    @people << person
  end

  def add_animal(animal)
    species_array = @animals[animal.species]
    species_array << animal
  end
end