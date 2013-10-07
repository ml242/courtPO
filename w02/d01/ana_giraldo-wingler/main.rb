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
      shelter.pets.each do |pet|
        puts "#{pet.name} the #{pet.species}"
      end
    when "2"
      shelter.owners.each do |owner|
        puts "#{owner.name}, #{owner.age}"
      end
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
      puts "These pets need a home:"
      need_adopting.each_with_index do |pet, index|
      puts "(#{index}) #{pet.name.capitalize} the #{pet.species}"
         end
      loved_pet_index = ask("Which would you like to place?")
      loved_pet = need_adopting[loved_pet_index.to_i]
      puts "Who is adopting #{loved_pet.name.capitalize} the #{loved_pet.species}?"
      new_owner = ask("#{shelter.owners.each_with_index {|pets, index| puts index}}")
        shelter.owners[new_owner.to_i].pets << loved_pet
        puts "#{shelter.owners[new_owner.to_i].name.capitalize} has adopted #{loved_pet.name.capitalize}!"
        loved_pet.owner << shelter.owners[new_owner.to_i]
        need_adopting.delete_at(loved_pet_index.to_i)
      # shelter.owners.<< need_adopting[loved_pet.to_i]
      # prompt user to select one
      # prompt user for desired adopter
      # call 'adopt' method on adopter
    when "6"
      puts "Here are all the owners and their pets:"
      shelter.owners.each_with_index do |owner, index|
        puts "#{index} #{owner.name} owns #{owner.pets}"
      end
      disowner_index = ask("Who wants to give up a pet?")
      disowner = shelter.owners[disowner.to_i]
      puts "#{disowner.name}'s pets are:"
      disowner.pets.each_with_index do |pet, index|
        puts "#{index} #{pet.name} the #{pet.species}"
      end
      disowned = ask("Which would #{disowner.name} like to give up?")
      puts "#{disowner.name} has left #{disowner.pets[disowned.to_i].name} at the shelter."
      shelter.pets << disowner.pets[disowned.to_i]
      disowner.pets[disowned.to_i].owner.pop
      disowner.pets.delete_at(disowned.to_i)
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
