require 'pry'
require 'faker'

require_relative 'animal'
require_relative 'person'
require_relative 'shelter'

p1 = Person.new(Faker::Name.name, 25)
p2 = Person.new(Faker::Name.name, 30)
p3 = Person.new(Faker::Name.name, 40)

a1 = Animal.new(Faker::Name.name, 3, "Male", "Cat")
a2 = Animal.new(Faker::Name.name, 2, "Female", "Dog")
a3 = Animal.new(Faker::Name.name, 4, "Female", "Turtle")


binding.pry