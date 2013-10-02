require 'pry'
# require_relative 'person'
# require_relative 'shelter'

class Animal
    attr_accessor :pet_name

    def initialize(pet_name, pet_age, pet_gender, species)
        @pet_name = pet_name
        @pet_age = pet_age
        @pet_gender = pet_gender
        @species = species
    end

end

