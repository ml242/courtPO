# Shelter:
# The shelter should display all the persons.
# The shelter should display all the animals.

class Shelter
  attr_accessor :person, :animal, :shelter_hash, :people, :animals
    def initialize
      #@shelter_hash = {} #Hash.new { |people, person| people[person] = [] }
      @people = {}
      @animals = {}
    end
end


# shelter_hash = {}

# shelter_hash = {

#   :people => {
#     :p1 =>

#     :p2 =>

#    }

#   :animals => {
#     :a1 =>

#     :a2 =>

#   }
# }