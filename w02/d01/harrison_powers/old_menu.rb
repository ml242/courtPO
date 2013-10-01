##BACKUP MENU BEFORE CREATION OF CLASS##

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