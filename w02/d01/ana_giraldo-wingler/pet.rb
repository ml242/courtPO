class Pet
  attr_accessor :name, :age, :gender, :species, :owner

  def initialize(name, age, gender, species)
    @owner = []
    @name = name
    @age = age
    @gender = gender
    @species = species
  end

  def has_owner?
    @owner.any?
  end

  # when we display the animal using puts or print, the
  # to_s method is called to pretty print an Animal
  # def to_s
  # end

end