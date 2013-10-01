require "pry"
require_relative "animals"
require_relative "persons"

# METHODS---------------------------------------------

class Shelter
    attr_accessor :shelter_name, :animals, :people

  def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals      = []
    @people       = []
  end
end

def ask(question)
  puts question
  answer = gets.chomp!
end

def main_menu(initial_menu)
  initial_menu.each {|item| puts item}
end

def display_animals(shelter_name)
  #shelter_name = ask("For what shelter would you like to view the list of animals?")
  # puts shelter_name.to_s.animals
  puts shelter_name.animals
end

def display_people(shelter_name)
  #shelter_name = ask("For what shelter would you like to view the list of people?")
  puts shelter_name.people
end

def add_animal(shelter_name, name, age, gender, species)
  #prompt user for inputs for Animal.new
  shelter_name.animals << Animal.new(name, age, gender, species)
  # call Animal.new
end

def new_animal_record(shelter_name)
  #shelter_name  = ask("What shelter is this animal being surrendered to?")
  name          = ask("What is the animal's name?")
  age           = ask("What is the animal's age?")
  gender        = ask("Is the animal male or female?")
  species       = ask("What species is the animal")
  add_animal(shelter_name, name, age, gender, species)
  puts "#{name}, a #{age} year old #{gender} #{species} has been successfully added."
end

def add_person(shelter_name, name, num_of_children, age) #, current_pets
  #prompt user for inputs for Person.new
   shelter_name.people << Person.new(name, num_of_children, age) #, current_pets
  # call Person.new
end

def new_person_record(shelter_name)
  #shelter_name    = ask("What shelter is this person visiting?")
  name            = ask("What is the person's name?")
  num_of_children = ask("How many childen does the person have?")
  age             = ask("What is the person's age?")
  add_person(shelter_name, name, num_of_children, age)
  puts "You have successfully added #{name.capitalize}, a #{age} year old with #{num_of_children} children."
end

def adopt(shelter_name)
  input_name    = ask("What is your name?")
  # shelter_name  = ask("What shelter are you looking to adopt from?")
    if shelter_name.people.include?(input_name)
      person.pets << shelter_name.animals.pop
    else
      puts "Please add this person to database before proceeding with the adoption process."
      new_person_record(shelter_name)
    end
end

def surrender(shelter_name)
  input_name    = ask("What is your name")
  # shelter_name  = ask("At what shelter will you surrender your animal?")
    if shelter_name.people.include?(input_name)
      shelter.animals << input_name.pets.pop
    else
      puts "Please add this person to database before proceeding with the surrender process."
      new_person_record(shelter_name)
    end
end



# VARIABLES-------------------------------------------

happi_tails = Shelter.new("Happi Tails")

initial_menu = [
  "1:  display all animals",
  "2:  display all persons",
  "3:  create an animal",
  "4:  create an person",
  "5:  facilitate person adopts an animal",
  "6:  facilitate person surrendering an animal up for adoption",
  "q:  quit",
  ""]


# add_person_menu = {

# }

# add_animal_menu = [
#     "1:  To what shelter is the animal being surendered?",
#     "2:  What is the animal's name?",
#     "3:  What is the animal's age?",
#     "4:  Is the animal male or female?",
#     "5:  What species is the animal"]


#CODE-------------------------------------------------

# add_person(happi_tails, "tom", 2, 35)
# add_person(happi_tails, "joe", 0, 22)
# add_person(happi_tails, "jen", 4, 44)
# add_person(happi_tails, "sally", 0, 30)

# add_animal(happi_tails, "bubbles",  2,  "female", "cat")
# add_animal(happi_tails, "hank",     7,  "male",   "dog")
# add_animal(happi_tails, "frog",     4,  "male",   "cat")
# add_animal(happi_tails, "tweets",   11, "female", "bird")
# add_animal(happi_tails, "rocky",    1,  "male",   "turtle")
# add_animal(happi_tails, "horace",   13, "male",   "horse")
# add_animal(happi_tails, "snickers", 6,  "female",   "cat")

# adopt(p3, happi_tails)
# adopt(p4, happi_tails)

# surrender(p3, happi_tails)


puts "Welcome to Happi Tails, please select from the following menu:"
choice = ""
#until ["1", "2", "3", "4", "5", "6"].include? choice
until choice == "q"
  main_menu(initial_menu)
  choice = ask("Please select the number of the item from the menu to proceed:")

  # display all animals
  if choice == "1"
    display_animals(happi_tails)
  elsif choice == "2"
    display_people(happi_tails)
  elsif choice == "3"
    new_animal_record(happi_tails)
  elsif choice == "4"
    new_person_record(happi_tails)
  elsif choice == "5"
    adopt(happi_tails)
  elsif choice == "6"
    surrender(happi_tails)
  elsif choice == "q"
    puts "Goodbye."
  else
    puts "Please make a valid selection from the menu."
  end
end









