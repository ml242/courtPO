class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
    @name = name #string
    @age = age #integer
    @gender = gender #string
    @species = species #string
  end

  def add_toy(toy)
    @toys ||= Array.new
    @toys << toy
  end

  def to_s
    "#{@name} is a #{@age} year old #{@gender} #{@species}."
  end
end