require 'pry'
require 'json'

require_relative 'animal'
require_relative 'person'
require_relative 'shelter'
require_relative 'menu_text'

def load_json_file( filename )
  JSON.parse( IO.read(filename) )
end

def write_json_file( object, filename )
  json_object = object.to_json
  File.open(filename, 'w'){ |file| JSON.dump( json_object, file) }
end

def ask(string)
  puts string
  gets.chomp!
end

def menu_type
  user_input = ask(TYPE_MENU)
  case user_input
  when "1"
    $user_type = "animal_shelter"
  when "2"
    $user_type = "person"
  end
end

def menu_signup
  while true
    case $user_type
    when "person"
      db = $persons
    when "animal_shelter"
      db = $shelters
    end
    req_username = ask("What would you like your username to be?")
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
    Person.new(req_username, password_1, name_of_person, num_children, age, num_pets, looking_for_pet)
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
    Shelter.new(req_username, password_1, name_of_shelter, location_of_shelter)
    puts "Your account has been created and you have been logged in."
  end
end

def menu_login
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

$shelters = Hash.new
$persons = Hash.new
$animals = Hash.new

def menu_main
  user_input = ask(MAIN_MENU)
  case user_input.downcase
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
  when "q"
    $user_status = "logged_out"
  end
end

#$persons = load_json_file( 'persons_db.json' )
#$animals = load_json_file( 'animals_db.json' )
#$shelters = load_json_file( 'shelters_db.json' )

while true

  until $user_status == 'logged_in'
    user_input = ask(LOGIN_MENU_1)
    break if user_input.downcase == 'q'
    case user_input
    when "1"
      menu_type
      menu_login
    when "2"
      menu_type
      menu_signup
    end
  end

  while $user_status == 'logged_in'
    menu_main
  end

  break if user_input.downcase == 'q'

end

# write_json_file( $persons, 'persons_db.json')
# write_json_file( $animals, 'animals_db.json')
# write_json_file( $shelters, 'shelters_db.json')

puts "bye"