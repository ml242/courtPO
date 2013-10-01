class Person
  attr_accessor :name, :children, :age, :pets

  def initialize(name, age, children, pets, shelter)
    @name = name
    @children = children
    @age = age
    @pets = [pets]
    shelter.people[name] = self
  end

  def show_specs
    "#{@name} is a #{@age}-year-old with #{@children} children who has the following pets #{@pets}"
  end

end