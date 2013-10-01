class Person
  attr_accessor :name, :number_of_kids, :age, :pets
  def initialize(name, number_of_kids, age)
    @name = name
    @number_of_kids = number_of_kids
    @age = age
    @pets = {}
  end
end