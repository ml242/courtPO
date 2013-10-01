# The shelter should display all the persons.
# The shelter should display all the animals.

class Shelter
  attr_accessor

  def initialize(name)
    @name = name
    @all_persons = {}
    @all_animals = {}
  end

end