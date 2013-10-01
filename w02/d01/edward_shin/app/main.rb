require 'pry'
require_relative 'animal_shelter'
require_relative 'animal'
require_relative 'people'

#constants
CAT = "cat"
DOG = "dog"


#create a new shelter
s1 = Shelter.new("Northshore")

#create animal
a1 = Animal.new("scruffy", 2, "male", CAT)
a2 = Animal.new("Monster", 4, "female", CAT)
a3 = Animal.new("tiny", 3, "male", DOG)
a4 = Animal.new("carlos", 1, "female", DOG)
a5 = Animal.new("lindsay", 5, "male", CAT)
#create human
p1 = Person.new("Eddie", 25, 0)
p2 = Person.new("Samantha", 24, 0)
p3 = Person.new("Annie", 24, 3)
p4 = Person.new("Tony", 27, 1)
#add animals to shelter
s1.add_animal(a1)
s1.add_animal(a2)
s1.add_animal(a3)
s1.add_animal(a4)
s1.add_animal(a5)

puts s1.animals
#add people to shelter
s1.add_person(p1)
s1.add_person(p2)
s1.add_person(p3)

puts s1.people









=begin
#User Prompts
puts "What would you like to do?"
puts "1 = display animals at the shelter"
puts "2 = display all persons at the shlter"

input = gets.chomp

if input == 1
	puts s1.animals
elsif input == 2
	puts s1.people
end
		


=end