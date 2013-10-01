class Animal
  attr_accessor :name, :age, :gender, :species, :toys
  def initialize()
    puts "What is the name of the animal?"
    @name = gets.chomp
    puts"What is the age of the animal"
    @age = gets.chomp.to_f
    # puts"What is the gender of the animal?"
    # @gender = gets.chomp
    # puts("What is the species?")
    # @species = gets.chomp
    @toys = []
  end

  def add_toys (toys)
   @toys << toys
  end

  def remove_toys(toys)
      toys_to_remove = nil
    @toys.each do |item|
      if item == toys
        toys_to_remove = item
      end
    end
    @toys.delete(toys_to_remove)
  end

end


