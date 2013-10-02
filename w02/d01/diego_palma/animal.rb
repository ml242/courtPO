# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a specie.

class Animal
     attr_accessor :specie, :name, :gender, :age

     def initialize(specie, name, gender, age)
          @name = name
          @age = age
          @gender = gender
          @specie = specie
     end
end

# a1 = Animal.new("Dog", "Errol", "male", 2)
# a2 = Animal.new("Cat", "Bubbles", "female", 4)
# a3 = Animal.new("Dog", "Peter", "male", 10)
# a4 = Animal.new("Dog", "Paul", "male", 1)


