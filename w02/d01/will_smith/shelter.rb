require_relative 'person'
require_relative 'animal'

class Shelter
  def initialize
    @people = {}
    @animals = {}
  end

  def display_animals
    @animals.each_value do |v|
      p v
    end
  end
  def display_people
    @people.each_value do |v|
      p v
    end
  end
end