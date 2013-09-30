class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
    @name = name #string
    @age = age #integer
    @gender = gender #string
    @species = species #string
  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s
    "#{@name} is a #{@age} year old #{@gender} #{@species}."
  end
end