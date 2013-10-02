require_relative 'shelter'
require_relative 'animal'
require_relative 'person'

happitails = Shelter.new

def ask(string)
  puts string
  gets.chomp!
end
"Welcome to Happitails!"

while true

INSTRUCTIONS = "
Press 1 to view our animals
Press 2 to view our people
Press 3 to add an animal
Press 4 to add you or someone else to our database
"

input = ask(INSTRUCTIONS)
choice = gets.chomp!

case choice
  when '1' then shelter.display_animals
  when '2' then happitails.display_people
  when '3'
    puts "What is the animal's name?"
    name = gets.chomp!
    puts "How old is #{name}?"
    age = gets.chomp!
    puts "What gender is #{name}?"
    gender = gets.chomp!
    puts "What kind of animal is #{name}?"
    species = gets.chomp!
    happitails.new_animal(name, age, gender, species)
  when '4'
    puts "Wht is the person's name?"
    name = gets.chomp!
    puts "How many children does #{name} have?"
    num_children = gets.chomp!
    puts "How old is #{name}?"
    age = gets.chomp!
    happitails.new_person(name, number_of_children, age)
  else "Oops! Something's gone wrong. Let's try this again."
  end
end

