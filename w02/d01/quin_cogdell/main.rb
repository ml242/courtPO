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
      binding.pry

    when 'persons'
      shelter.display_persons

    when 'give'
      pet_name = ask("What is your pets name")
      pet_age = ask("What is your pets age?")
      pet_gender = ask("What is your pets gender?")
      pet_species = ask("What is your pets species")
      shelter.accept_new_animal(pet_name, pet_age, pet_gender, pet_species)
      binding.pry

    when 'apply'
      person_name = ask("What is your name")
      person_age = ask("What is your age?")
      person_num_children = ask("How many chilldren do you have?")
      person_num_pets = ask("How many pets do you have?")
      shelter.accept_new_person(person_name, person_age, person_num_children, person_num_pets)
      #binding.pry

    when 'adopt'
      available_pets = shelter.display_animals
      person_name = ask("What is your name?")
      pet_chosen = ask("#{person_name} choose from the following pets #{available_pets}")
      shelter.adopt_animal(person_name, pet_chosen)



    else
        puts "I'm sorry I don't know what you're asking for"
        puts "Please wait and a supervisor will be with you shortly"
        puts "Feel free to again"
        prompt(shelter_one)

    end
end



prompt(shelter_one)