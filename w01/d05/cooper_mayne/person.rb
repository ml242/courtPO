class Person  
  attr_accessor :apartment
  attr_reader :gender, :age, :name
  def initialize (name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = nil
  end

  def move_to apartment_object
    @apartment = apartment_object
  end

  def move_from apartment_object
    @apartment = nil
  end
end

