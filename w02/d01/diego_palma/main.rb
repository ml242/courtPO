require 'pry'
require_relative 'shelter'
require_relative 'person'
require_relative 'animal'

# At start, the user is prompted with a menu of options:
# display all animals
# display all persons
# create an animal
# create an person
# facilitate person adopts an animal
# facilitate person puts an animal up for adoption
# After selecting from the menu the task the user is prompted through the entire process



# /animals/adopt?species=dog

# animal = Shelter.release(animal)
# logged_in_person.adopt(animal)

s1 = Shelter.new

a1 = Animal.new("Dog", "Errol", "male", 2)
a2 = Animal.new("Cat", "Bubbles", "female", 4)
a3 = Animal.new("Dog", "Peter", "male", 10)
a4 = Animal.new("Dog", "Paul", "male", 1)

p1 = Person.new("Kat", 25, "kat@gmail.com")
p2 = Person.new("Diego", 28, "dppalma@gmail.com")

s1.rescue(a1)
s1.rescue(a2)
s1.rescue(a3)
s1.rescue(a4)

binding.pry

