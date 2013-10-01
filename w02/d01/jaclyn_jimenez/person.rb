class Person

  attr_accessor :name, :age

  def initialize(shelter)
    puts "What is this person's name?"
    @name = gets.chomp
    puts "What is this person's age?"
    @age = gets.chomp
    @my_pets = []
    @my_pets_string = []
    shelter.add_person(self)
  end

  def adopt_pet(pet)
    @my_pets << pet
    @my_pets.last.set_adoption_status
  end

  def number_of_pets
    @my_pets.length
  end

  def give_up_pet(pet)
    if @my_pets.include?(pet)
      pet.reset_adoption_status
      @my_pets.delete(pet)
    else
      "This person does not have #{pet} as one of their pets."
    end
  end

  def pets_list_string
    @my_pets.each do |pet|
      @my_pets_string << pet.name
    end
    @my_pets_string.join ", "
  end

  def person_info
      "#{@name} is #{@age} years old and has #{number_of_pets.to_s}... #{my_pets_string}"
  end

end