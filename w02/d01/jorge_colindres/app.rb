require 'pry'
require 'pry-nav'
require 'pry-remote'
require 'faker'
require 'rainbow'

require_relative 'shelter'
require_relative 'person'
require_relative 'animal'
require_relative 'menu'

ANIMAL_GENDERS = ["male", "female"]
ANIMAL_SPECIES = ["bunny", "cat", "dog"]

MENU_PROMPTS = [
  "Welcome to Happi Tails. Choose an option from below:",
  "1 - Display all bunnies",
  "2 - Display all cats",
  "3 - Display all dogs",
  "4 - Dispaly all people",
  "5 - Adopt an animal",
  "6 - Give away an animal",
  "7 - Create a person",
  "8 - Create an animal",
  "9 - Leave Happi Tails"
]

# Create the shelter
s1 = Shelter.new

# Create 8 random people
8.times.each do
  rand_num = (1..70).to_a.sample
  person = Person.new(Faker::Name.first_name, rand_num)
  s1.add_person(person)
end

# Create 50 random animals
50.times.each do
  rand_num = (1..5).to_a.sample
  animal = Animal.new(Faker::Name.first_name, rand_num, ANIMAL_GENDERS.sample, ANIMAL_SPECIES.sample)
  s1.add_animal(animal)
end

# Bring up the menu
prompt_user

