class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
    @toys = []
  end

  # when we display the animal using puts or print, the
  # to_s method is called to pretty print an Animal
  def to_s

  end
end