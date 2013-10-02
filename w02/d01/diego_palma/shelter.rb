require 'pry'

# The shelter should display all the people.
# The shelter should display all the animals.

class Shelter
     attr_accessor :animals, :people
     #  _.animal =(animal_name)
     # _ @name

     def initialize
          @animals = {}
          @people = []
     end

     def animal_count
          @animals.size
     end

     def rescue(animal_found)
          @animals.push(animal_found)
     end

     def release(animal)
          @animals.delete(animal)
     end

     def display_animals
          puts @animal
     end
end

# class String
# def character_count
#      self.split(', ').size
# end

binding.pry

