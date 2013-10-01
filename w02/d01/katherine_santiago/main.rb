require 'pry'
require_relative 'shelter'
require_relative 'animal'
require_relative 'person'

a1 = Animal.new("Hobbes", 3, "male", "cat")
a2 = Animal.new("Calvin", 3, "male", "cat")
a3 = Animal.new("Quincy", 2, "male", "dog")
a4 = Animal.new("Juliet", 4, "female", "parrot")

p1 = Person.new("kat", 27, "female")
p2 = Person.new("diego", 27, "male")

s1 = Shelter.new("Happy Tails Animal Shelter")






#shelter rescues 4 animals in the array
s1.rescue(a1)
s1.rescue(a2)
s1.rescue(a3)
s1.rescue(a4)

p1.adopt(a1)
s1.release(a1)

p1.adopt(a1)
s1.release(a1)
s1.collect(a1)

p2.adopt(a2)
s1.release(a2)
s1.collect(a2)
