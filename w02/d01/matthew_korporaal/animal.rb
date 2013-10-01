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
    puts "My name is #{name}."
    puts "I am #{age} years old."
    puts "I am a #{gender} #{species}."
    puts "I have a master and I love them." if @has_owner
    puts "I am an orphan, will you be my master?" if !@has_owner
  end
end