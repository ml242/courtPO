# Attributes of Person Class  Ruby Type
# name  String
# age Integer
# gender  String
# apartment hmmmmmm

class Person
  attr_accessor

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @apartment = []
    @building = []
  end
end