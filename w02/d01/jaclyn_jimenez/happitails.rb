require 'pry'
require 'faker'

require_relative 'animal'
require_relative 'person'
require_relative 'shelter'

s1 = Shelter.new("Happy Tails")

p1 = Person.new(Faker::Name.name, 25, s1)
p2 = Person.new(Faker::Name.name, 30, s1)
p3 = Person.new(Faker::Name.name, 40, s1)

a1 = Animal.new(Faker::Name.name, 3, "Male", "Cat", s1)
a2 = Animal.new(Faker::Name.name, 2, "Female", "Dog", s1)
a3 = Animal.new(Faker::Name.name, 4, "Female", "Turtle", s1)


binding.pry