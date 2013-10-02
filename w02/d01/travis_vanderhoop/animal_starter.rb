require 'pry'
class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
    @name = name
    @age = age
    @gender = gender
    @species = species
  end


    # to_s method is called to pretty print an Animal
  def pretty_print
    "#{@name} is a #{@age} year old #{@species}."
  end
end