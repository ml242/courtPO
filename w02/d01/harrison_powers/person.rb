class Person
  attr_accessor :name, :children, :age, :num_pets, :pets, :looking_for_pet, :password

  def initialize(password, name, children, age, num_pets, looking_for_pet)
    @password = password #string
    @name = name #string
    @children = children #integer
    @age = age #integer
    @num_pets = num_pets #integer
    @looking_for_pet = looking_for_pet #boolean
    $persons << self
  end

  def adopt(animal)
    @pets ||= Array.new
    @pets << animal
    animal.shelter.remove_animal(animal)
  end

  def put_up_for_adoption(animal, shelter)
    @pets.delete
    shelter.add_animal(animal)
  end

  def is_looking?
    @looking_for_pet
  end

  def to_s
    looking = ""
    looking = "Is currently looking for a pet!" if self.is_looking == true
    "#{@name} is a #{@age} year old, with #{@children} children. {looking}"
  end

end