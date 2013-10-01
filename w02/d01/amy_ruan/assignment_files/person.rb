class Person
  attr_accessor :name, :children, :age, :pets
  def initialize()
    puts "What is your name?"
    @name = gets.chomp
    puts "How old are you?"
    @age = gets.chomp.to_f
    @children = []
    @pets = []
  end

  def adopt_pets(pets)
    @pets << pets
  end

def put_pets_adoption(pets)
    pets_for_adoption = nil
    @pets.each do |item|
      if item == pets
        pets_for_adoption = item
      end
    end
    @pets.delete(pets_for_adoption)
  end

  def count_of_pets
    count_of_pets = @pets.length
  end

end

