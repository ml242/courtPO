class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def home(apartmentID)
    @apartment = apartmentID
  end
end