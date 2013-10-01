require 'pry'

def ask(question)
    puts question
    answer = gets.chomp
end

require_relative 'pet'
require_relative 'owner'
require_relative 'shelter'

shelter = Shelter.new
shelter.name = "Happi Tails"
shelter.manager = "Ana G-W"


binding.pry

puts "Welcome to the #{shelter.name} Pet Management System. Please choose from the menu:"
puts "(1) Display all animals"
puts "(2) Display all owners"
puts "(3) Add an animal"
puts "(4) Add an owner"
puts "(5) Give an orphaned pet a new home"
puts "(6) Put an animal up for adoption"
puts "(7) Quit"

answer = gets.chomp

while answer != "7"

  case answer
    when "1"
      puts "#{shelter.pets.to_s}"
    when "2"
      puts "#{shelter.owners.to_s}"
    when "3"
      # create a new pet
      # add it to the @pets array in the shelter object
      shelter.add_pet
    when "4"
      # add a person to the @owners hash within the shelter object
      shelter.add_owner
    when "5"
      # help someone adopt an animal
      # list all animals with has_owner? => false
      need_adopting = shelter.find_homeless_pets
      need_adopting.each_with_index do |pet, index|
      puts "These pets need a home:"
      puts "#{index} #{pet}"
         end
      loved_pet = ask("Which would you like to place?")
      binding.pry
      owner
      shelter.owners.WHOEVER WANTS THIS PET<< need_adopting[loved_pet.to_i]
      # prompt user to select one
      # prompt user for desired adopter
      # call 'adopt' method on adopter
    when "6"
      # put an animal up for adoption:
      # print array of pets with index values
      # prompt user to select a pet
      #
    end

  puts "What would you like to do next? Here are your options:"
  puts "(1) Display all animals"
  puts "(2) Display all owners"
  puts "(3) Add an animal"
  puts "(4) Add an owner"
  puts "(5) Give an orphaned pet a new home"
  puts "(6) Put an animal up for adoption"
  puts "(7) Quit"

  answer = gets.chomp
end
