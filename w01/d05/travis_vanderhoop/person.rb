require 'pry'

class Person
  attr_accessor :name, :age, :gender, :apartment, :instances

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender

  end

end

