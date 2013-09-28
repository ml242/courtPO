class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = []
  end
  def rent(apartment)
    @apartment << apartment
  end
end