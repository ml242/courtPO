TYPE_MENU = "
Hi there. Are you an animal shelter or a person?

For Animal Shelter, press:
> 1

For Person, press:
> 2
"

LOGIN_MENU_1 = "
Welcome to the Ruby Animal Shelter and Adoption system.

If you are an animal shelter, press:
> 1

If you are a person looking to adopt or put an animal
up for adoption, press:
> 2

To quit, press:
> Q
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

def ask(string)
  puts string
  gets.chomp!
end

class Menu

  def type
    user_input = ask(TYPE_MENU)
    case user_input
    when "1"
      $user_type = "animal_shelter"
    when "2"
      $user_type = "person"
    end
  end

  def signup(db)
    while true
      puts req_username = ask('What would you like your username to be?')
      break if db.has_key?(req_username) == false
    end
    puts
    puts "That username is available."
    while true
      password_1 = ask("Please enter a password.")
      puts
      password_2 = ask("Please re-enter your password.")
      break if password_1 == password_2
      puts "Your passwords do not match. Try again."
    end
    case $user_type
    when "person"
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
      $persons[req_username] = Person.new(password_1, name_of_person, num_children, age, num_pets, looking_for_pet)
      $user_status = 'logged_in'
      $username = req_username
      puts "Your account has been created and you have been logged in."
    when "animal_shelter"
      puts LOGIN_MENU_6
      name_of_shelter = gets.chomp
      puts LOGIN_MENU_7
      location_of_shelter = gets.chomp
      $user_status = 'logged_in'
      $username = req_username
      $shelters[username] = Shelter.new(password_1, name_of_shelter, location_of_shelter)
      puts "Your account has been created and you have been logged in."
    end
  end

  def login
    puts
    username = ask('Please enter your username:')
    password = ask('Please enter your password:')
    case $user_type
    when "person"
      if $persons.has_key?(username) == true
        $user_status = 'logged_in' if $persons[username]['password'] == password
      end
    when "animal_shelter"
      if $shelters.has_key?(username) == true
        $user_status = 'logged_in' if $shelters[username]['password'] == password
      end
    end
  end

  def main
    user_input = ask(MAIN_MENU)
    break if user_input == '0'
    case user_input
    when "1"
      $animals.values.each do |x| puts x.to_s end
      puts
    when "2"
      $persons.values.each do |x| puts x.to_s end
      puts
    when "3"
      $shelters.values.each do |x| puts x.to_s end
      puts
    when "4"
      puts CREATE_ANIMAL_MENU_1
      name = gets.chomp
      puts CREATE_ANIMAL_MENU_2
      age = gets.chomp
      puts CREATE_ANIMAL_MENU_3
      gender = gets.chomp
      puts CREATE_ANIMAL_MENU_4
      species = gets.chomp
      if $user_type == "person"
        $persons[username].pets << Animal.new(name, age, gender, species)
      elsif $user_type == "animal_shelter"
        $shelters[username].add_animal(Animal.new(name, age, gender, species))
      end
      puts
      puts "Animal added."
      puts
    when "5"
      puts FACILITATE_ADOPTION_MENU_2
      animal_name = gets.chomp
      $persons[person_name].adopt(animal_name)
      puts "Hurray! Animal was adopted!"
      puts
    when "6"
      puts FACILITATE_PUT_ADOPTION_MENU_1
      shelter_name = gets.chomp
      puts FACILITATE_PUT_ADOPTION_MENU_2
      animal_name = gets.chomp
      $persons[person_name].put_up_for_adoption(animal_name, shelter_name)
      puts
      puts "Animal was put up for adoption."
      puts
    end
  end

end