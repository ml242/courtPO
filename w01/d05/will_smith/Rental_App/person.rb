require 'pry'
require 'pry-nav'
require 'pry-remote'

class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def person_info
    puts "My name is #{@name}. I'm a  #{@age} year old #{@gender}.  I'm proud to say I live in apartment #{@apartment}."
    end
end

#building 1
p1 = Person.new("Jerry", 38, "M", "1A")
p2 = Person.new("George", 35, "M", "1A")
p3 = Person.new("Elaine", 33, "F", "1B")
p4 = Person.new("Kramer", 37, "M", "2A")

#building 2
p5 = Person.new("Ross", 27, "M", "1A")
p6 = Person.new("Chandler", 29, "M", "1A")
p7 = Person.new("Rachel", 30, "F", "1B")
p8 = Person.new("Phoebe", 28, "F", "2A")
p9 = Person.new("Joey", 27, "M", "2B")
p10 = Person.new("Monica", 36, "F", "2B")