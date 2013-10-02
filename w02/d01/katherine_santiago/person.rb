require 'pry'
# require_relative 'animal'
# require_relative 'shelter'


class Person
    attr_reader :name, :age, :gender, :animals, :pets


    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
        @pets = []
    end

    def count_pets
        num_of_pets = @pets.size
    end

    def adopt(pet_name)
        @pets = []
        @pets << pet_name
    end


    def drop_off(pet_name)
        @animals << @pets.delete(pet_name)
    end
end