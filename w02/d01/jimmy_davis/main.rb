require 'pry'
require 'pry-nav'
require_relative 'shelter'
require_relative 'animal'
require_relative 'person'

# At start, the user is prompted with a menu of options:
# display all animals
# display all persons
# create an animal
# create an person
# facilitate person adopts an animal
# facilitate person puts an animal up for adoption
# After selecting from the menu the task the user is prompted through the entire process

happitails = Shelter.new

def ask(string)
  puts string
  gets.chomp!
end

while true

INSTRUCTIONS = "
To display all animals, type: > display_animals

To display all persons, type: > display_persons

To create an animal, type: > create_animal

To create a person, type: > create_person
"

  input = ask(INSTRUCTIONS)
  choice = input.downcase.gets.chomp!


  case choice
  when "display_animals" then happitails.display_animals
  when "display_persons" then happitails.display_persons
  when "create_animal"
    puts "Animal name?"
    name = gets.chomp!
    puts "Animal age?"
    age = gets.chomp!
    puts "Animal gender?"
    gender = gets.chomp!
    puts "Animal species?"
    species = gets.chomp!
    happitails.new_animal(name, age, gender, species)
  when "create_person"
    puts "Person name?"
    name = gets.chomp!
    puts "Person number of children?"
    number_of_children = gets.chomp!
    puts "Person age?"
    age = gets.chomp!
    happitails.new_person(name, number_of_children, age)
  else "ERROR! Please choose again."
  end
 end


p1 = Person.new("Barbara", 4, 55)
p2 = Person.new("Patty", 5, 50)
p3 = Person.new("Kathleen", 5, 48)

a1 = Animal.new("Sasha", 7, "f", "dog")
a2 = Animal.new("Deuce", 8, "m", "dog")
a3 = Animal.new("Lucky", 10, "f", "cat")
a4 = Animal.new("Brody", 4, "m", "dog")
a5 = Animal.new("Penny", 12, "f", "dog")
a6 = Animal.new("Buddy", 2, "m", "dog")
a7 = Animal.new("Dusty", 2, "f", "dog")
a8 = Animal.new("Buster", 1, "m", "cat")

p1.number_of_pets = [a1, a2, a3]

p2.number_of_pets = [a4]

p3.number_of_pets = [a5, a6]