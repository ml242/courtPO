require_relative 'shelter'
require_relative 'animal'
require_relative 'person'

puts "Please pick : Place Pet, Adopt Pet, Display Animal, Display People"
puts "What do you want to do?"
action = gets.chomp.downcase

s1  = Shelter.new

case action
when "place pet"
  a1= Animal.new
  p1= Person.new
  s1.place_pet(p1, a1)
when "adopt pet"
  p1 = Person.new
  a1 = nil
  p s1.animal
  puts "Which pet do you to adopt?"
  a1 = gets.chomp.downcase
  s1.adopt_pet(p1,a1)
when "display animal"
  p s1.display_animal
when "display_people"
  p s1.display_person
else
  "Please pick from your options!!"
end





