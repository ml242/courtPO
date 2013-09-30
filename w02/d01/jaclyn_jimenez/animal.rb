# Later: An animal can have multiple toys
# define a method 'add_toy'

class Animal
  attr_accessor :name, :age, :sex, :species

  def initialize(name, age, sex, species)
    @name = name
    @age = age
    @sex = sex
    @species = species
    @adopted = false
  end

  def is_adopted(owner)
    owner.adopt_pet(self)
  end

  def set_adoption_status
    @adopted = true
  end

end