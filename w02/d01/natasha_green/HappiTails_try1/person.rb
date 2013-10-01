=begin
- Person:
  - A person should have a name. STRING
  - A person should have a number of children. INTEGER
  - A person should have an age. INTEGER
  - A person should have a number of pets. INTEGER
=end

class Person
  attr_accessor :name, :age, :children, :pets

  def initialize
    @name = name
    @age = age
    @children = children
    @pets = pets
  end
end

#Person actions are in persons.
def adopt

end

def give_away

end

