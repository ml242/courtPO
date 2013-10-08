require 'pry'
require_relative 'person'

  class Shelter
    attr_accessor :animals
    attr_reader :name, :age, :people
    def initialize(name)
      @people = []
      @animals = []
      @name = name
      @age = 7
    end

    def animal_count
      @animals.size #instance variable.
      # self.animals.size #method that retrieves the instance
      # animals.size #explicit version
    end

    def add_person(person)
      if person.name
        @people[person.name] = person
      else
        "please add a name"
      end
    end

    def adopt(person, animal)
    end
  end
binding.pry
