require 'pry'

class Person
  def initialize(options = {})
    @name = options[:name]
    @age = options[:age]
    @animals = []
  end

  def take_in(animal)
    @animal << animal
  end

end


#person can be hash or array