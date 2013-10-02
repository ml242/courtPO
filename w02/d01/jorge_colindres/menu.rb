def prompt_user
  quit = false
  until quit

    MENU_PROMPTS.each do |prompt|
      puts prompt
    end
    choice = gets.chomp

    case choice
      when "1" then puts s1.animals["bunny"].join(", ").color(:green)
      when "2" then puts s1.animals["cat"].join(", ").color(:green)
      when "3" then puts s1.animals["dog"].join(", ").color(:green)
      when "4" then puts s1.people.join(", ").color(:green)
      when "5"
        puts "Pick someone who will adopt from below:".color(:green)
        puts s1.people.join(", ").color(:blue)
        person_selected = gets.chomp.capitalize
        s1.people.each do |person|
          if person.name == person_selected
            person_selected = person
          end
        end
        puts "What type of animal do you want: bunny, cat or dog".color(:green)
        random_animal = gets.chomp.downcase
        if ANIMAL_SPECIES.include?(random_animal)
          case random_animal
            when "bunny" then random_animal = s1.search_animals("bunny")
            when "cat" then random_animal = s1.search_animals("cat")
            when "dog" then random_animal = s1.search_animals("dog")
          end
          s1.give_animal(random_animal, person_selected)
          puts "#{person_selected.name} now owns #{random_animal.name}, a #{random_animal.species}.".color(:red)
        else
          puts "Sorry, Happi Tails doesn't have any #{random_animal}s! Make sure to choose only a bunny, cat or dog!".color(:red)
        end
      when "6"
        people_with_animals = []
        s1.people.each do |person|
          unless person.pets.empty?
            people_with_animals << person
          end
        end
        if people_with_animals.empty?
          puts "Nobody owns any animals".color(:red)
        else
          puts "Pick one of the pet-owners who will give away their pet from below:".color(:green)
          puts people_with_animals.join(", ").color(:blue)
          person_selected = gets.chomp.capitalize
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
          animal_selected = gets.chomp.capitalize
          person_selected.pets.each do |pet|
            if pet.name == animal_selected
              animal_selected = pet
            end
            animal_selected
          end
          person_selected.give_away_animal(animal_selected, s1)
          puts "#{person_selected.name} gave away #{animal_selected.name}.".color(:red)
        end
      when "7"
        rand_num = (1..70).to_a.sample
        new_person = Person.new(Faker::Name.first_name, rand_num)
        s1.add_person(new_person)
        puts "#{new_person.name} was created. #{new_person.name} is #{new_person.age}.".color(:green)
      when "8" then
        rand_num = (1..5).to_a.sample
        new_animal = Animal.new(Faker::Name.first_name, rand_num, ANIMAL_GENDERS.sample, ANIMAL_SPECIES.sample)
        s1.add_animal(new_animal)
        puts "#{new_animal.name} was created. #{new_animal.name} is a #{new_animal.age} year old #{new_animal.gender} #{new_animal.species}.".color(:green)
      when "9" then quit = true
      else
        puts "ERROR!!! Pick one of the options from the menu by using 1-9.".color(:red).blink
    end
  end
end
