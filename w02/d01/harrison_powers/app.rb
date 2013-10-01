$persons = Hash.new { |x,y| x[y] = Hash.new }
$animals = Hash.new { |x,y| x[y] = Hash.new }
$shelters = Hash.new { |x,y| x[y] = Hash.new }

require_relative 'animal'
require_relative 'person'
require_relative 'shelter'

LOGIN_MENU_1 = "
Welcome to the Ruby Animal Shelter and Adoption system.

If you are an animal shelter, press:
> 1

If you are a person looking to adopt or put an animal
up for adoption, press:
> 2

To quit, press:
> 0
"
LOGIN_MENU_2 = "
To log-in, press:
> 1

To create an account, press:
> 2
"
LOGIN_MENU_3 = "
Please enter a username:
"
LOGIN_MENU_4 = "
Please enter a password:
"
LOGIN_MENU_5 = "
Re-enter your password:
"
LOGIN_MENU_6 = "
What is the name of your shelter?
"
LOGIN_MENU_7 = "
What is the location of your shelter?
"
LOGIN_MENU_8 = "
What is your name?
"
LOGIN_MENU_9 = "
How many children?
"
LOGIN_MENU_10 = "
How old are you?
"
LOGIN_MENU_11 = "
How many pets do you have?
"
LOGIN_MENU_12 = "
Are you looking to adopt a pet?
"

MAIN_MENU = "

To list all animals, press:
> 1

To list all people, press:
> 2

To list all shelters, press:
> 3

To add an animal, press:
> 4

To adopt an animal, press:
> 5

To put an animal up for adoption, press:
> 6

To log out, press:
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

FACILITATE_PUT_ADOPTION_MENU_1 = "
Aww.. at least you are doing the right thing if you can't take care of this animal.

What is the username of the shelter your pet is going to?
(ask the shelter and they will provide the nickname to enter)
"
FACILITATE_PUT_ADOPTION_MENU_2 = "
What is the name of the animal? (must have been created in the system already)
"

FACILITATE_ADOPTION_MENU_1 = "
Yippiee!! A super cool animal is going to make someone really happy!

Which animal is being adopted?
"

while true
  puts LOGIN_MENU_1
  user_input = gets.chomp
  break if user_input == "0"
  case user_input
  when "1"
    user_type = "animal_shelter"
    puts LOGIN_MENU_2
    user_input2 = gets.chomp
    case user_input2
    when "1"
      puts LOGIN_MENU_3
      username = gets.chomp
      puts LOGIN_MENU_4
      password_check = gets.chomp
      if password_check == $shelters[username].password
        login_status = "logged_in"
        puts "Thank you. You are now logged in."
      else
        puts "Your username or password was incorrect."
      end
    when "2"
      puts LOGIN_MENU_3
      username = gets.chomp
      if $shelters.has_key?(username) == true
        puts "That username is already taken."
      else
        puts LOGIN_MENU_4
        password_check = gets.chomp
        puts LOGIN_MENU_5
        password_check2 = gets.chomp
        if password_check == password_check2
          puts LOGIN_MENU_6
          name_of_shelter = gets.chomp
          puts LOGIN_MENU_7
          location_of_shelter = gets.chomp
          $shelters[username] = Shelter.new(password_check, name_of_shelter, location_of_shelter)
          puts "Your account has been created. Please proceed to login."
        else
          puts "Those passwords do not match."
        end
      end
    end
  when "2"
    user_type = "person"
    puts LOGIN_MENU_2
    user_input2 = gets.chomp
    case user_input2
    when "1"
      puts LOGIN_MENU_3
      username = gets.chomp
      puts LOGIN_MENU_4
      password_check = gets.chomp
      if password_check == $persons[username].password
        login_status = "logged_in"
        puts "Thank you. You are now logged in."
      else
        puts "Your username or password was incorrect."
      end
    when "2"
      puts LOGIN_MENU_3
      username = gets.chomp
      if $persons.has_key?(username) == true
        puts "That username is already taken."
      else
        puts LOGIN_MENU_4
        password_check = gets.chomp
        puts LOGIN_MENU_5
        password_check2 = gets.chomp
        if password_check == password_check2
          puts LOGIN_MENU_8
          name_of_person = gets.chomp
          puts LOGIN_MENU_9
          num_children = gets.chomp
          puts LOGIN_MENU_10
          age = gets.chomp
          puts LOGIN_MENU_11
          num_pets = gets.chomp
          puts LOGIN_MENU_12
          looking_for_pet = gets.chomp
            case looking_for_pet.downcase
            when "yes", "yup", "true"
              looking_for_pet = true
            else
              looking_for_pet = false
            end
          $persons[username] = Person.new(password_check, name_of_person, num_children, age, num_pets, looking_for_pet)
          puts "Your account has been created. Please proceed to login."
        else
          puts "Those passwords do not match."
        end
      end
    end

  end 

  while login_status == "logged_in"

    puts MAIN_MENU
    user_input = gets.chomp
    break if user_input == "0"
    case user_input
      when "1"
        $animals.values.each do |x| puts x.to_s end
      when "2"
        $persons.values.each do |x| puts x.to_s end
      when "3"
        $shelters.values.each do |x| puts x.to_s end
      when "4"
        puts CREATE_ANIMAL_MENU_1
        name = gets.chomp
        puts CREATE_ANIMAL_MENU_2
        age = gets.chomp
        puts CREATE_ANIMAL_MENU_3
        gender = gets.chomp
        puts CREATE_ANIMAL_MENU_4
        species = gets.chomp
        if user_type == "person"
          $persons[username].pets << Animal.new(name, age, gender, species)
        elsif user_type == "animal_shelter"
          $shelters[username].add_animal(Animal.new(name, age, gender, species))
        end
        puts "Animal added."
      when "5"
        puts FACILITATE_ADOPTION_MENU_2
        animal_name = gets.chomp
        $persons[person_name].adopt(animal_name)
      when "6"
        puts FACILITATE_PUT_ADOPTION_MENU_1
        shelter_name = gets.chomp
        puts FACILITATE_PUT_ADOPTION_MENU_2
        animal_name = gets.chomp
        $persons[person_name].put_up_for_adoption(animal_name, shelter_name)
      when "0"
        login_status = "logged_out"
    end
  end
end