=begin
- Animal:
  - An animal should have a name. STRING
  - An animal should have an age. INTEGER
  - An animal should have a gender. STRING
  - An animal should have a species. STRING
  - An animal can have multiple toys. ARRAY
=end

class Animal
  attr_accessor :name, :age, :gender, :species, :toys


def initialize
  @name = name
  @age = age
  @gender = gender
  @species = species
  @toys = []
end
end

