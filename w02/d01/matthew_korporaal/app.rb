require 'pry'
require 'pry-nav'
require 'pry-remote'
require 'rainbow'
require_relative 'animal'
require_relative 'human'
require_relative 'shelter'

def main_menu
  puts "\nWhat would you like to do? Choose \#".color("ff0000")
  puts "\nCREATE".underline.color("#00ff00")
  puts "1. Person"
  puts "2. Animal"
  puts "\nDISPLAY".underline.color("#00ff00")
  puts "3. People"
  puts "4. Animals"
  puts "5. Shelter"
  puts "\nMANAGE".underline.color("#00ff00")
  puts "6. Adopt Pet"
  puts "7. Abandon Pet\n\n"
  puts "8. Quit"
  print "\n\n > "
  gets.chomp!
end

def create_person(shelter)
  print "Enter Name: "
  name = gets.chomp
  print "Enter Age: "
  age = gets.chomp.to_i
  Human.new(name, age)
end

def create_animal(shelter)
  print "Enter Name: "
  name = gets.chomp
  print "Enter Age: "
  age = gets.chomp.to_i
  print "Enter Gender (m or f): "
  gender = gets.chomp
  print "Enter Species: "
  species = gets.chomp
  Animal.new(name, age, gender, species)
end

def adopt(shelter)
  if !shelter.humans.empty? && !shelter.animals.empty?
    puts "Choose who by number: ".color("E80C00")
    shelter.humans.each_with_index do |human, index|
      print "#{index + 1}. ".color("E80C9B")
      print "#{human.to_s}".color("E80C9B")
    end
    person_index = gets.chomp.to_i - 1

    puts "Choose who by number: ".color("E80C00")
    shelter.animals.each_with_index do |animal, index|
      print "#{index + 1}. ".color("E80C9B")
      print "#{animal.to_s}".color("E80C9B")
    end
    animal_index = gets.chomp.to_i - 1
    person = shelter.humans[person_index]
    adoptee = shelter.animals[animal_index]
    shelter.pet_adoption(person, adoptee)
  else
    puts "Must be at least one person and one animal to adopt"
  end
  end

  def abandon(shelter)
    puts "Choose who by number: ".color("E80C00")
    shelter.humans.each_with_index do |human, index|
      print "#{index + 1}. ".color("E80C9B")
      print "#{human.to_s}".color("E80C9B")
    end
    person_index = gets.chomp.to_i - 1
    # Need logic to only print out owners pets instead of all
    #shelter.humans[person_index].pets
    puts "Choose who by number: ".color("E80C00")
    shelter.animals.each_with_index do |animal, index|
      print "#{index + 1}. ".color("E80C9B")
      print "#{animal.to_s}".color("E80C9B")
    end
    animal_index = gets.chomp.to_i - 1
    person = shelter.humans[person_index]
    adoptee = shelter.animals[animal_index]
    shelter.pet_abandon(person, adoptee)
end

option = 0
shelter = Shelter.new
while option != "8"
  option = main_menu
  puts ""
  case option.to_i
  when 1
    person = create_person(shelter)
    shelter.add_human(person)
  when 2
    animal = create_animal(shelter)
    shelter.add_animal(animal)
  when 3
    shelter.humans.to_s
  when 4
    shelter.animals.to_s
  when 5
    shelter.to_s
  when 6
    adopt(shelter)
  when 7
    abandon(shelter)
  end
end
