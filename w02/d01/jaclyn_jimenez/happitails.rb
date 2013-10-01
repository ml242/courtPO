require 'pry'

require 'faker'
require 'rainbow'


require_relative 'animal'
require_relative 'person'
require_relative 'shelter'
ANIMALS = {}
PEOPLE = {}

s1 = Shelter.new("Happy Tails")
puts "First please create people and animals.".foreground(:red)
puts "Person 1".foreground(:blue)
p1 = Person.new(s1)
puts "Person 2".foreground(:blue)
p2 = Person.new(s1)
puts "Animal 1".foreground(:blue)
a1 = Animal.new(s1)
puts "Animal 2".foreground(:blue)
a2 = Animal.new(s1)

def start(s1)
puts "Menu:".foreground(:green)
puts "Display all animals [da],
Display all people [dp],
Create an animal [ca],
Create a person [cp],
Facilitate person adopts animal [a],
Facilitate person putting animal up for adoption[pu]
Exit [x]".foreground(:yellow)
input = gets.chomp!
answer = case input
           when 'da'
            puts s1.list_animals_info
            start(s1)
           when 'dp'
            puts s1.list_people_info
            start(s1)
           when 'ca'
            Animal.new(s1)
            start(s1)
           when 'cp'
            Person.new(s1)
            start(s1)
           when 'a'
            puts "Which person?".foreground(:blue)
            person = gets.chomp
            person = PEOPLE[person]
            puts "Which animal?".foreground(:blue)
            pet = gets.chomp
            pet = ANIMALS[pet]
            puts person.adopt_pet(pet)
            start(s1)
          when 'pu'
            puts "Which person?".foreground(:blue)
            person = gets.chomp
            person = PEOPLE[person]
            puts "Which animal?".foreground(:blue)
            pet = gets.chomp
            pet = ANIMALS[pet]
            puts person.give_up_pet(pet)
            start(s1)
          when 'x'
            puts "Goodbye!".foreground(:red)
          else
            puts "Sorry that does not make sense.".foreground(:red)
            start(s1)
          end
        end

start(s1)


binding.pry

#USERS = { }
#u1 = User.new("friendjonathan")
#u2 = User.new("Kira")
#then in the user.rb file for the class
#  def initialize(username)
#    @username = username
#    USERS[self.username] = self
#  end