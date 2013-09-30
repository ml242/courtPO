require_relative 'person'
require_relative 'animal'
require_relative 'shelter'

happitails = Shelter.new
run_menu = true

puts "Welcome to HappiTails"


while run_menu
puts "What would you like to do? Please type: \n
'all_animals' to see all of the animals \n
'all_people' to see all of the people \n
'create_animal' to create a new animal \n
'create_person' to create a new person \n
'adopt_animal' to adopt an animal \n
or 'put_up_for_adoption' to put your animal up for adoption."

choice = gets.chomp!
choice.downcase!

case choice
when "all_animals"
  happitails.display_animals
when "all_people"
  happitails.display_people
when "create_animal"
  puts "What is the animal's name?"
  name = gets.chomp.downcase
  puts "What is the animal's age?"
  age = gets.chomp.to_i
  puts "What is the animal's gender?"
  gender = gets.chomp.downcase
  puts "What is the animal's species?"
  species = gets.chomp.downcase
  happitails.new_animal(name, age, gender, species)
when "create_person"
  puts "What is the person's name?"
  name = gets.chomp.downcase
  puts "How many children does the person have?"
  num_children = gets.chomp.to_i
  puts "How old is the person?"
  age = gets.chomp.to_i
  happitails.new_person(name, num_children, age)
when "adopt_animal"
  puts "What is your name?"
  name = gets.chomp.downcase
  puts "What is the name of the animal you'd like to adopt?"
  animal_name = gets.chomp.downcase
  puts "What is #{animal_name}'s species?"
  species = gets.chomp.downcase
  happitails.adopt_animal(animal_name, species, name)
  puts "Okay, #{name} adopted #{animal_name}!"
when "put_up_for_adoption"
  puts "What is the name of the animal you'd like to put up for adoption?"
  animal_name = gets.chomp.downcase
  puts "What is your name?"
  name = gets.chomp.downcase
  happitails.give_up_animal(animal_name, name)
else
  puts "I don't know what that means."
end

puts "Would you like to do something else? y/n"
input = gets.chomp.downcase
if input != "y" && input != "n"
  puts "I don't understand that."
elsif input == "n"
  puts "bye!"
  run_menu = false
else
  run_menu = true
end
end