# Later: An animal can have multiple toys

class Animal
  attr_accessor :name :age :sex :species
  def initialize(name, age, sex, :species)
    @name = name
    @age = age
    @sex = sex
  end

end