require 'pry'
require_relative 'animal_shelter'
require_relative 'animal'
require_relative 'people'

#constants
CAT = "cats"
DOG = "dogs"

#create a new shelter
s1 = Shelter.new("Happi Tails")

#create animal
a1 = Animal.new("scruffy", 2, "male", CAT)
a2 = Animal.new("Monster", 4, "female", CAT)
a3 = Animal.new("tiny", 3, "male", DOG)
a4 = Animal.new("carlos", 1, "female", DOG)
a5 = Animal.new("lindsay", 5, "male", CAT)
a6 = Animal.new("lady", 3, "male", DOG)
a7 = Animal.new("firefly", 7, "female", CAT)
a8 = Animal.new("Jackie Chan", 2, "male", DOG)
a9 = Animal.new("spongebob", 3, "female", CAT)
#create human
p1 = Person.new("Eddie", 25, 0)
p2 = Person.new("Samantha", 24, 0)
p3 = Person.new("Annie", 24, 3)
p4 = Person.new("Tony", 27, 1)
p5 = Person.new("Danny",23, 0)
#add animals to shelter
s1.add_animal(a1)
s1.add_animal(a2)
s1.add_animal(a3)
s1.add_animal(a4)
s1.add_animal(a5)
s1.add_animal(a6)
s1.add_animal(a7)
#animals already owned by people
p1.adopt(a8)
p2.adopt(a9)
#add people to shelter
s1.add_person(p1)
s1.add_person(p2)
s1.add_person(p3)
s1.add_person(p4)
s1.add_person(p5)

#User Prompts
puts "Hi, Welcome to Happi Tails! Just to remind you, we only deal with dogs and cats. What would you like to do?"
puts "browse, adopt,add an animal(type add) ,or leave?"
input = gets.chomp
until input == "leave"
	if input == "browse"
		puts "Would you like to see who is currently in the store or browse through our animals of dogs or cats? Please say people, dogs, or cats"
		input1 = gets.chomp
			if input1 == CAT
				puts s1.animals[CAT]
			elsif input1 == DOG
				puts s1.animals[DOG]
			elsif input1 == "people"
				puts s1.people
			end
	elsif input == "adopt"
		puts "Great! We just need some information before you adopt"
		puts "what is your name?"
		name = gets.chomp
		puts "Ok, how old are you?"
		age = gets.chomp
		puts "Great, and how many children to you have?"
		number_of_children = gets.chomp
		new_person = Person.new(name, age, number_of_children)
		s1.add_person(new_person)
		puts "What type of animal would you like to adopt, cats or dogs?"
		type = gets.chomp
			if type == CAT
				puts "please choose from #{s1.animals[CAT]}" 
				animal_name = gets.chomp
				s1.adopt_animal(new_person, type, animal_name)
				puts "Awesome, you have just adopted #{new_person.pets}. Thanks for adopting! hope to see you again soon."
				break
			elsif type == DOG
				puts "please choose from #{s1.animals[DOG]}"
				animal_name = gets.chomp
				s1.adopt_animal(new_person, type, animal_name)
				puts "Awesome, you have just adopted #{new_person.pets}. Thanks for adopting! Hope to see you again soon."
				break
			end
		elsif input == "add"
			puts "Cool, we just need some info about your animal. Is your pet a dog or cat?"
			type = gets.chomp
			animal_type = type+"s"
			puts "Is your #{animal_type} a male or female?"
			gender = gets.chomp
			puts "What is the name of your #{animal_type}?"
			animal_name = gets.chomp
			new_animal = Animal.new(animal_name, age, gender, animal_type)
			s1.add_animal(new_animal)
			puts"Wonderful, now these are all the #{animal_type} at our shelter: #{s1.animals}."
	else	
		puts "Sorry, please choose from browse or adopt."
	end	
puts "what would you like to do now, browse, adopt, or leave?"	
input = gets.chomp
end


