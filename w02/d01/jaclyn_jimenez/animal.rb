class Animal
  attr_accessor :name, :age, :sex, :species, :toys

  def initialize(name, age, sex, species, shelter)
    @name = name
    @age = age
    @sex = sex
    @species = species
    @adopted = false
    @toys = []
    @shelter = shelter
    shelter.add_animal(self)
  end

  def is_adopted(owner)
    owner.adopt_pet(self)
  end

  def set_adoption_status
    @adopted = true
  end

end