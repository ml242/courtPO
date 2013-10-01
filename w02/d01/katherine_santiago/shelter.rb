require 'pry'
# require_relative 'animal'
# require_relative 'person'

class Shelter
    attr_accessor :name, :animals, :adopted, :persons

    def initialize(name)
        @animals = []
        @adopted =[]
        @persons = []
        @name = name

    end

    def rescue(new_animal)
        @animals.push(new_animal)
    end

    def release(animal_name)
        @adopted << @animals.delete(animal_name)
        # @animals[name] = animal_name
    end

    def collect(name)
        # person who adopted animal is added to database
        @persons.push(name)
    end

end
