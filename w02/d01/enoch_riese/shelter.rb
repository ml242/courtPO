require_relative 'person.rb'
require_relative 'animal_starter.rb'
require 'pry'

USEMENU = "
To display all animals, enter:
> display animals

To display all people, enter:
> display people

To create an animal, enter:
> create animal

To create a person, enter:
> create person

To adopt an animal, enter:
> adopt an animal

To give an animal up for adoption, enter:
> give animal up

To exit, enter
> exit
"

@shelter = {"animals" => [], "people" => []}

def request_input(question)
  puts question
  gets.chomp
end
def user_menu
  options = ["display animals",
            "display people",
            "create animal",
            "create person",
            "adopt an animal",
            "give animal up",
            "exit"]
  while true
    ans = request_input(USEMENU)
    break if options.include?(ans)
  end
  return ans
end
a = Animal.new("Grady", 3, "dog", ["chew toy"], @shelter)
p = Person.new("Ian", 22, 1, [], @shelter)
while true
  input_1 = user_menu
  case input_1
  when "create animal" then
    input_2 = request_input("What is the animal's name?")
    input_3 = request_input("What is the animal's age?")
    input_4 = request_input("What is the animal's species?")
    input_5 = request_input("what toys does the animal have?")
    a = Animal.new(input_2, input_3, input_4, input_5, @shelter)
  when "create person" then
    input_2 = request_input("What is the person's name?")
    input_3 = request_input("What is the person's age?")
    input_4 = request_input("How many children does the person have?")
    input_5 = request_input("what are the names of the person's pets?").split
    p = Person.new(input_2, input_3, input_4, input_5, @shelter)
  when "display animals" then
    @shelter["animals"].each {|an| puts an.show_specs}
  when "display people" then
    @shelter["people"].each {|an| puts an.show_specs}
  when "adopt an animal" then
  when "give up animal" then
  when "exit" then break
  end
end
