# Later: Person has number of animals
# create method that displays animals person has & #


class Person
  attr_accessor :name, :age, :number_of_children

  def initialize(name, age, shelter)
    @name = name
    @age = age
    @my_pets = []
    shelter.add_person(self)
  end

  def adopt_pet(pet)
    @my_pets << pet
    @my_pets.last.set_adoption_status
  end

end