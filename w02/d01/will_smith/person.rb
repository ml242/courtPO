# Define Person as a class
class Person

  # Set up accessors and mutators for the attributes of a Person
  # attr_accessor sets up both for you
  attr_accessor :name, :children, :age, :pets

  # Used when creating a new person.
  #   Example:
  #       Person.new('Will', 27)
  def initialize(name, age)
    @name = name
    @age = age
    @children = []
    @pets = []

  end

  def num_children
    @children.each.to_i
  end

    def num_pets
    @pets.each.to_i
  end

  # When we display the person using puts or print, the
  #   to_s method is called to pretty print a person
  def to_s
    "Hi, I am #{@name}. I am #{@age}, with #{num_children} children and #{num_pets} pets"
  end
end
