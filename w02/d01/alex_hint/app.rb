# 1. Animal Shelter: Happi Tails
# You are the manager at HappiTails animal shelter.

# Suggested Development Phases:

# Phase 1
# Can create animals and persons

# Phase 2
# New animals and persons can be added to the shelter

# Phase 3
# When creating an animal or person, the user is prompted for information like names, gender etc.

# Phase 4
# At start, the user is prompted with a menu of options:
# display all animals
# display all persons
# create an animal
# create an person
# facilitate person adopts an animal
# facilitate person puts an animal up for adoption
# After selecting from the menu the task the user is prompted through the entire process

# Relationships:
# A person should be able to adopt an animal.
# A person should be able to put an animal up for adoption


require 'pry'
require_relative 'person'
require_relative 'animal'
require_relative 'shelter'

#just creating a couple of database inputs
p1 = Person.new('Alex', 23, 0)
p2 = Person.new('Roxy', 22, 2)
#some animals as well
a1 = Animal.new('Doggies', 2, 'm', 'dog')
a2 = Animal.new('Cattie', 3, 'f', 'cat')
#HappiTails will be a class with two hashes in it
HappiTails = Shelter.new

# p p1
# p p2
# p a1
# p a2

# hash = {:item1 => 1}
# hash[:item2] = 2

#putting things into the people Hash, person's name as key and the rest of info as value
HappiTails.people[p1.name] = p1
HappiTails.people[p2.name] = p2
#putting things into the animals Hash, animal name as key, the other info is the value
HappiTails.animals[a1.an_name] = a1
HappiTails.animals[a2.an_name] = a2
# puts HappiTails.people
# puts HappiTails.animals

# p HappiTails.people
# p HappiTails.animals

#while loop to run until user says quit, this is the menu
# At start, the user is prompted with a menu of options:
# display all animals
# display all persons
# create an animal
# create an person
# facilitate person adopts an animal
# facilitate person puts an animal up for adoption
# After selecting from the menu the task the user is prompted through the entire process

usr_input = 0
while usr_input != 'quit'
  puts 'Please choose from the following Menu:'
  puts
  puts '1 -- display all animals'
  puts '2 -- display all persons'
  puts '3 -- create an animal'
  puts '4 -- create an person'
  puts '5 -- adopt an animal'
  puts '6 -- give up an animal for adoption'
  puts
  puts 'quit -- to quit'
  puts
  puts

  usr_input = gets.chomp
end




































