class Person
  attr_accessor :name, :age, :gender, :apartmentID
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def home(apartmentID)
    @apartmentID = apartmentID
  end
end