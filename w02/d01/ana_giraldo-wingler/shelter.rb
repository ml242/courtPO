class Shelter
  attr_accessor :name, :manager, :owners, :pets

  def initialize
    # @owners is a hash, where the keys are people's names
    # and the values are the @pets arrays in each person object
    @owners = []
    @pets = []
  end

  def ask(question)
    puts question
    answer = gets.chomp
  end

  def add_owner
    name = ask("Name:").capitalize
    age = ask("Age:")
    new_owner = Owner.new(name, age)
    @owners << new_owner
  end

  def add_pet
    name = ask("Name:").capitalize
    age = ask("Age:")
    gender = ask("Gender:").capitalize
    species = ask("Species:")
    new_pet = Pet.new(name, age, gender, species)
    @pets << new_pet
  end

  def find_homeless_pets
    homeless_pets = []
    @pets.each do |pet|
      if pet.has_owner? == false
        homeless_pets << pet
      end
      homeless_pets
    end
    end


  def adopt

    end

end