class Shelter
  attr_accessor :person, :animal
  def initialize
    @person = []
    @animal = ["darling","honey","baby"]
  end

  # s1 = Shelter.new

  # p @animal
  # puts "What do you want to remove"
  # animal = gets.chomp
  # indexer = @animal.index(Tommy)
  # print indexer
  # a1 = @animal[index]

  def add_person(person)
    @person << person
  end

  def add_animal(animal)
    @animal << animal
  end

  def adopt_pet(person, pet)
    person.adopt_pets(pet)
    pet_adopted = nil
    @animal.each do |item|
      if item == pet
        pet_adopted = item
      end
    end
    @animal.delete(pet_adopted)
    print "#{pet} has been adopted by #{person.name}. Only #{animal.length} animal(s) available for adoption"
  end

  def place_pet(person, pet)
    person.put_pets_adoption(pet)
    pet_placed = nil
    @animal.each do |item|
      if item == pet
        pet_placed = item
      end
    end
    add_animal(pet_placed)
    print "#{person.name} has placed #{pet.name} for adoption. We currently have #{animal.length} animal(s) for adoption"
  end

  def display_animal
    print " We have #{animal.length} for adoption: #{@animal}"
  end

  def display_person
    print @person
  end

end