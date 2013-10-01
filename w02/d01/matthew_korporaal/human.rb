class Human
  attr_accessor :name, :age, :num_pets, :pets

  def initialize(name, age)
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
    puts "#{name} is #{age} and has #{num_pets} pets.".color("E80C9B")

    # @pets.each do |pet|
    # binding.pry
    #   puts "#{pet.name} ".color("E80C9B")
    # end
    return
  end
end