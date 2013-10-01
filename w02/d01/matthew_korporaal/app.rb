require 'pry'
require 'pry-nav'
require 'pry-remote'

require_relative 'animal'
require_relative 'human'
require_relative 'shelter'

a1 = Animal.new("Spot", 3, "m", "dog")
a2 = Animal.new("Elly", 20, "f", "elephant")
s1 = Shelter.new
s1.add_animal(a1)
s1.add_animal(a2)




h1 = Human.new("Billy", 16, 0)
h2 = Human.new("Xavier", 30, 2)

s1.pet_adoption(h1, a1)

s1.pet_abandon(h1, a1)

#h1.adopt_pet()
#h1.give_up_pet()

