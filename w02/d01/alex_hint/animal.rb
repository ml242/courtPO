# Animal:
# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a species.

class Animal
  attr_accessor :an_name, :an_age, :an_gender, :species, :shelter
  def initialize(an_name, an_age, an_gender, species)
    @an_name = an_name
    @an_age = an_age
    @an_gender = an_gender
    @species = species
  end
end