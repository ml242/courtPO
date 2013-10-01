require 'pry'
require_relative 'animal'
require_relative 'person'
require_relative 'shelter'


a1 = Animal.new
a1.name = 'Itchy'
a1. gender = 'f'
a1.species = 'Cat'
a1.toys = ['sock', 'ball on a string']

a2 = Animal.new
a2.name = 'Champ'
a2. gender = 'm'
a2.species = 'dog'
a2.toys = ['bone', 'tennis ball']

p1 = Person.new
p1.name = 'Quin'
p2 = Person.new
p2.name = 'Caroline'

p3 = Person.new
p3.name = 'John'
#p1.num_pets = 1

shelter_one = Shelter.new
shelter_one.animals = [a1, a2]
#shelter_one.adopt_animal(p1, a2)
#binding.pry
shelter_one.persons = [p1, p2]
shelter_one.display_persons

def ask(string)
  puts string
  gets.downcase.chomp!
end

def prompt(shelter)

    puts "Welcome to Quin's Kick_Hash Animal Shelter!"
    puts "We are excited to have you!"

    puts " -- Type 'Animals' to display all of the animals"
    puts " -- Type 'Persons' to display all employees"
    puts " -- Type 'Give' to give us your pet for adoption"
    puts " -- Type 'Adopt' to see animals available for adoption "
    puts " -- Type 'Apply' to input your resume for a job."

    menu_selection = ask("Please select from the options above!")


    router(menu_selection, shelter)
end

def router(menu_selection, shelter)
  case menu_selection
    when 'animals'
      shelter.display_animals

    when 'persons'
      shelter.display_persons

    when 'give'
      ask("What is your pets name")


    when 'apply'

    when 'adopt'


    else
        puts "I'm sorry I don't know what you're asking for"
        puts "Please wait and a supervisor will be with you shortly"
        puts "Feel free to again"

    end
end



prompt(shelter_one)