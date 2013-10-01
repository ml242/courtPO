require 'pry'
require 'pry-nav'
require 'pry-remote'
require 'faker'
require 'rainbow'

require_relative 'shelter'
require_relative 'person'
require_relative 'animal'

animal_gender = ["male", "female"]
animal_species = ["bunny", "cat", "dog"]

s1 = Shelter.new

# p1 = Person.new("John", 55)
# p2 = Person.new("Tom", 40)
# p3 = Person.new("Karen", 34)
# p4 = Person.new("Wilma", 19)

# s1.add_person(p1)
# s1.add_person(p2)
# s1.add_person(p3)
# s1.add_person(p4)

8.times.each do
  rand_num = (1..70).to_a.sample
  person = Person.new(Faker::Name.first_name, rand_num)
  s1.add_person(person)
end

50.times.each do
  rand_num = (1..5).to_a.sample
  animal = Animal.new(Faker::Name.first_name, rand_num, animal_gender.sample, animal_species.sample)
  s1.add_animal(animal)
end

# a1 = Animal.new("Spot", 2, "male", "dog")
# a2 = Animal.new("Lucy", 1, "female", "dog")
# a3 = Animal.new("Teddy", 3, "male", "bunny")
# a4 = Animal.new("Lion", 2, "male", "cat")

# s1.add_animal(a1)
# s1.add_animal(a2)
# s1.add_animal(a3)
# s1.add_animal(a4)

# found = s1.search_animals("bunny")
# found = found[0]

# person = s1.people[1]

# s1.give_animal(p1, found)

quit = false
  until quit

  puts "Welcome to Happi Tails. Choose an option from below:"
  puts "1 - Display all bunnies"
  puts "2 - Display all cats"
  puts "3 - Display all dogs"
  puts "4 - Dispaly all people"
  puts "5 - Adopt an animal"
  puts "6 - Give away animal"
  puts "7 - Create a person"
  puts "8 - Create an animal"
  puts "9 - Leave Happi Tails"
  choice = gets.chomp

  case choice
    when "1" then puts s1.animals["bunny"].join(", ").color(:green)
    when "2" then puts s1.animals["cat"].join(", ").color(:green)
    when "3" then puts s1.animals["dog"].join(", ").color(:green)
    when "4" then puts s1.people.join(", ").color(:green)
    when "5"
      puts "Pick someone who will adopt from below:".color(:green)
      puts s1.people.join(", ").color(:blue)
      person_selected = gets.chomp
      s1.people.each do |person|
        if person.name == person_selected
          person_selected = person
        end
        person_selected
      end
      puts "What type of animal do you want: bunny, dog, cat".color(:green)
      random_animal = gets.chomp
      case random_animal
        when "bunny" then random_animal = s1.search_animals("bunny")
        when "cat" then random_animal = s1.search_animals("cat")
        when "dog" then random_animal = s1.search_animals("dog")
      end
      s1.give_animal(random_animal, person_selected)

      puts "#{person_selected.name} now owns #{random_animal.name}, a #{random_animal.species}.".color(:red)
    when "6"
      puts "Pick one of the pet-owners who will give away their pet from below:".color(:green)
      people_with_animals = []
      s1.people.each do |person|
        unless person.pets.size == 0
          people_with_animals << person
        end
      end
      puts people_with_animals.join(", ").color(:blue)
      person_selected = gets.chomp
      s1.people.each do |person|
        if person.name == person_selected
          person_selected = person
        end
        person_selected
      end
      puts "Choose an animal from below:".color(:green)
      person_selected.pets.each do |pet|
        puts "#{pet.name}".color(:blue)
      end
      animal_selected = gets.chomp
      person_selected.pets.each do |pet|
        if pet.name == animal_selected
          animal_selected = pet
        end
        animal_selected
      end
      person_selected.give_away_animal(animal_selected, s1)
      puts "#{person_selected.name} gave away #{animal_selected.name}.".color(:red)
    when "7"
      rand_num = (1..70).to_a.sample
      new_person = Person.new(Faker::Name.first_name, rand_num)
      s1.add_person(new_person)
      puts "A new person, #{new_person.name}, was created.".color(:green)
    when "8" then
      rand_num = (1..5).to_a.sample
      new_animal = Animal.new(Faker::Name.first_name, rand_num, animal_gender.sample, animal_species.sample)
      s1.add_animal(new_animal)
      puts "A new #{new_animal.species}, #{new_animal.name}, was created.".color(:green)
    when "9" then quit = true
    else
      puts "ERROR!!! Pick one of the options from the menu by using 1-9.".color(:red)
  end
end

