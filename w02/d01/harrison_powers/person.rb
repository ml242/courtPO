class Person
  attr_accessor :name, :children, :age, :num_pets, :pets, :looking_for_pet

  def initialize(name, children, age, num_pets, looking_for_pet)
    @name = name #string
    @children = children #integer
    @age = age #integer
    @num_pets = num_pets #integer
    @looking_for_pet = looking_for_pet #boolean
  end

  def adopt(animal)
    @pets ||= Array.new
    @pets << animal
  end

  def put_up_for_adoption(animal, shelter)
    @pets.delete
    shelter.add_animal(animal)
  end

  def is_looking?
    @looking_for_pet
  end

end