class Person
  attr_accessor :name, :children, :age, :num_pets

  def initialize(name, children, age, num_pets)
    @name = name #string
    @children = children #integer
    @age = age #integer
    @num_pets = num_pets #integer
  end

end