$persons = Array.new
$animals = Array.new

require_relative 'animal'
require_relative 'person'
require_relative 'shelter'

MAIN_MENU = "
Welcome to the Ruby Animal Shelter and Adoption tracking system.


To display all animals, press:
> 1

To display all people, press:
> 2

To create an animal, press:
> 3

To create a person, press:
> 4

To facilitate a person adopting an animal, press:
> 5

To facilitate a person putting an animal up for adoption, press:
> 6

To exit, press:
> 0

"

CREATE_ANIMAL_MENU_1 = "
Let's add an aminal to the database.

To start, what is the name of the animal?
"

CREATE_ANIMAL_MENU_2 = "
How old is the animal?
"

CREATE_ANIMAL_MENU_3 = "
What is the gender?
"

CREATE_ANIMAL_MENU_4 = "
What is the species?
"

CREATE_PERSON_MENU_1 = "
Let's add a human to the database.

What is the person's name?
"

CREATE_PERSON_MENU_2 = "
How many children?
"

CREATE_PERSON_MENU_3 = "
How old is this person?
"

CREATE_PERSON_MENU_4 = "
How many pets does this person have?
"

CREATE_PERSON_MENU_5 = "
Is this person looking for a pet?
"

FACILITATE_PUT_ADOPTION_MENU_1 = "
Aww.. at least this person is doing the right thing if they can't take care of the animal.

What is the person's name?
"

FACILITATE_PUT_ADOPTION_MENU_2 = "
Which animal is being put up for adoption?
"

FACILITATE_ADOPTION_MENU_1 = "
Yippiee!! A super cool animal is going to make someone really happy!

What is the person's name?
"

FACILITATE_ADOPTION_MENU_2 = "
Which animal is being adopted?
"

while true

  puts MAIN_MENU
  user_input = gets.chomp
  break if user_input == "0"
  case user_input
    when "1"
      $animals.each do |x| puts x.to_s end
    when "2"
      $persons.each do |x| puts x.to_s end
    when "3"
      puts CREATE_ANIMAL_MENU_1
      name = gets.chomp
      puts CREATE_ANIMAL_MENU_2
      age = gets.chomp
      puts CREATE_ANIMAL_MENU_3
      gender = gets.chomp
      puts CREATE_ANIMAL_MENU_4
      species = gets.chomp
      Animal.new(name, age, gender, species)
      puts "Animal added."
    when "4"
      puts CREATE_PERSON_MENU_1
      name = gets.chomp
      puts CREATE_PERSON_MENU_2
      num_children = gets.chomp
      puts CREATE_PERSON_MENU_3
      age = gets.chomp
      puts CREATE_PERSON_MENU_4
      num_pets = gets.chomp
      puts CREATE_PERSON_MENU_5
      looking_for_pet = gets.chomp
      Person.new(name, num_children, age, num_pets, looking_for_pet)
      puts "Person added."
    when "5"
      puts FACILITATE_ADOPTION_MENU_1
      person_name = gets.chomp
      puts FACILITATE_ADOPTION_MENU_2
      animal_name = gets.chomp
      $persons[person_name].adopt(animal_name)
    when "6"
      puts FACILITATE_PUT_ADOPTION_MENU_1
      person_name = gets.chomp
      puts FACILITATE_PUT_ADOPTION_MENU_2
      animal_name = gets.chomp
      $persons[person_name].put_up_for_adoption(animal_name)
  end
end