# A person should have a name.
# A person should have a number of children.
# A person should have an age.
# A person should have a number of pets.

class Person
  attr_accessor :name, :number_of_children, :age, :pets

  def initialize(name, number_of_children, age)
    @name = name
    @number_of_children = number_of_children
    @age = age
    @pets = {}
  end

  def create_person(name, number_of_children, age)
    create_person = Person.new(name, number_of_children, age)
    @persons[name] = new_person
  end

  def display_persons
    @persons.each_value do |v|
    p v
  end

end