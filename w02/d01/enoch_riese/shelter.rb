require_relative 'person.rb'
require_relative 'animal_starter.rb'
require 'pry'

@shelter = {"animals" => [], "people" => []}

def request_input(question)
  puts question
  gets.chomp
end

while true
  input_1 = request_input("Would you like to add an animal or person?")
  input_2 = request_input("What is the #{input_1}'s name?")
  input_3 = request_input("What is the #{input_1}'s age?")
  if input_1 == "animal"
    input_4 = request_input("What is the animal's species?")
    input_5 = request_input("what toys does the animal have?")
    a = Animal.new(input_2, input_3, input_4, @shelter)
  elsif input_1 == "person"
    input_4 = request_input("How many children does the person have?")
    input_5 = request_input("what are the names of the person's pets?")
    p = Person.new(input_2, input_3, input_4, input_5, @shelter)
  end
  binding.pry
end
