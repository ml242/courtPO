class Animal

  attr_accessor :name, :age, :sex, :species, :toys, :shelter

  def initialize(shelter)
    puts "What is this animal's name?"
    @name = gets.chomp
    puts "What is this animal's age?"
    @age = gets.chomp
    puts "What is this animal's sex?"
    @sex = gets.chomp
    puts "What species is the animal?"
    @species = gets.chomp
    @adopted = false
    @toys = []
    shelter.add_animal(self)
  end

  def is_adopted(owner)
    owner.adopt_pet(self)
  end

  def set_adoption_status
    @adopted = true
  end

  def reset_adoption_status
    @adopted = false
  end

  def animal_info
    "#{@name} is a #{@age} year old #{@sex}and is a #{@species}."
  end

end