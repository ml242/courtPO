# Define Animal as a class
class Animal
  attr_accessor :name, :age, :gender, :species, :has_owner

  def initialize(name, age, gender, species)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @has_owner = false
  end

  def get_adopted
    @has_owner = true
  end
  #   to_s method is called to pretty print an Animal
  def to_s
    #binding.pry
    puts "Name: #{name} Age: #{age} years Gender: #{gender} Type: #{species}.".color("E80C9B")
    puts "I have a master and I love them.".color("E80C9B") if @has_owner
    puts "I am orphan, I want master.".color("E80C9B") if !@has_owner
  end
end