class Human
  attr_accessor :name, :age, :num_pets, :pets

  def initialize(name, age, num_children)
    @name = name
    @age = age
    @num_pets = 0
    @pets = []
  end

  def adopt_pet(animal)
    @pets << animal
    @num_pets += 1
  end

  def abandon_pet(animal)
    @pets.delete(animal)
    @num_pets -= 1
  end

  def to_s
    puts "My name is #{name} and am #{age}."
    puts "I have #{num_pets}."
    puts "Their names are " if num_pets > 0
    @pets.each do |pet|
      puts "#{pet.name} "
    end
  end
end