class Person
  attr_accessor :name, :children, :age, :pets

  def initialize(name, age, children, pets, shelter)
    @name = name
    @children = children
    @age = age
    @pets = [pets]
    shelter["people"] << self
  end
end