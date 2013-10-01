class Person
  attr_accessor :name, :age
  attr_reader :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def adopt_animal(animal)
    @pets << animal
  end

  def give_away_animal(animal, shelter)
    @pets.delete(animal)
    shelter.take_in_animal(animal)
  end

  def to_s
    "#{@name}"
  end
end