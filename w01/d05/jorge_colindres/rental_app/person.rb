class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def show_person
    "Hi, my name is #{@name}. I'm a #{@age} year old #{@gender}, and I live in #{@apartment}."
  end
end