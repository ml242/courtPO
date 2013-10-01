# A person should have a name.
# A person should have a number of children.
# A person should have an age.
# A person should have a number of pets.

class Person
  attr_accessor :name, :number_of_children, :age

  def initialize(name, number_of_children, age)
    @number_of_pets = [].count
    @display_persons = display_persons.name
    @create_person = Person.new
  end
end