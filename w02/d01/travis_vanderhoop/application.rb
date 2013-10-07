require 'pry'
require '/Users/vanderhoop/ga_WDI/hw/w02/d01/travis_vanderhoop/person.rb'
require '/Users/vanderhoop/ga_WDI/hw/w02/d01/travis_vanderhoop/shelter.rb'
require '/Users/vanderhoop/ga_WDI/hw/w02/d01/travis_vanderhoop/animal_starter.rb'

def ask_for_string(string)
  p string
  gets.chomp
end

CAT = 'cat'
DOG = 'dog'

#-----------------------------------------
shelter1 = Shelter.new("Happy Tails Animal Shelter")                            #(name)

#-----------------------------------------
a1 = Animal.new("Buster", 15, "m", DOG)                       #(name, age, gender, species)
a2 = Animal.new("Dunbar", 8, "m", CAT)
a3 = Animal.new("Beans", 11, "m", DOG)
a4 = Animal.new("Riley", 8, "f", DOG)
a5 = Animal.new("Flipper", 54, "m", DOG)
a6 = Animal.new("Midnight", 25, 'f', CAT)
a7 = Animal.new("Kitty", 6, 'f', CAT)
a8 = Animal.new("Elijah Jr", 2, 'f', DOG)
a9 = Animal.new("Killa", 6, 'f', DOG)
a10 = Animal.new("Everybody's Keeper", 10, 'm', DOG)
#-----------------------------------------
p1 = Person.new("Ben", 27,1 )                                            #(name, age)
p2 = Person.new("Derek Vander Hoop", 60, 1)
p3 = Person.new("Mallory", 24, 0)
p4 = Person.new("Tom Barrelman", 53, 1)
p5 = Person.new("Elijah Wood", 37, 10)
p6 = Person.new("Luke Summerfield", 40, 0)
#-----------------------------------------

shelter1.add_animal(a1)
shelter1.add_animal(a7)
shelter1.add_animal(a2)
shelter1.add_animal(a3)
shelter1.add_animal(a4)
shelter1.add_animal(a5)
shelter1.add_animal(a8)
shelter1.add_animal(a9)
shelter1.add_animal(a10)

# binding.pry
#presents user with menu options and stores their menu choice
puts "Welcome to Happy Tails Animal Shelter."
puts "Please choose from the following options:"
puts "1 - adopt an animal"
puts "2 - put an animal up for adoption"
puts " "
user_choice = gets.chomp

#takes users information and creates a new instance of person, which is then added to the shelter's client array
puts "Great. Before we begin, we need to get to know you."
person_name = ask_for_string("What's your full name?")
person_age = ask_for_string("How old are you?")
person_pet_count = ask_for_string("How many pets do you have?")
new_person = Person.new(person_name, person_age, person_pet_count)
shelter1.add_client(new_person)

  if user_choice == '1'
    puts " "
    puts "Great news! Your background check is clean."
    puts " "
    puts "Here are the animals currently up for adoption:"
    puts " "
    shelter1.display_all_animals
    adoption_choice_index = gets.chomp.to_i                                               #takes the value given by the users and converts it to an integer for use as an index value
    adopted_animal=shelter1.animals[adoption_choice_index]                     #stores the adopted animal
    shelter1.remove_animal(adopted_animal)                                                #removes the adoped animal
    puts "Congratulations. #{adopted_animal.name} is yours!"
    # p adopted_animal.pretty_print

  else
    animal_name = ask_for_string("Wonderful. What's the name of your animal?")
    animal_age = ask_for_string("How many years old is it?")
    animal_sex = ask_for_string("m or f?")
    animal_species = ask_for_string("Is it a dog or cat?")
    new_animal = Animal.new(animal_name, animal_age, animal_sex, animal_species)
    shelter1.add_animal(new_animal)
    puts "Great, we've added #{animal_name} to our shelter!"
  end


# display = shelter1.display_all_animals

# print display





