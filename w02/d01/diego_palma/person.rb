#Atributes

# A person should have a name.
# A person should have a number of children.
# A person should have an age.
# A person should have a number of pets.


#Actions/methods
# A person should be able to adopt an animal.
# A person should be able to put an animal up for adoption

class Person
     attr_accessor :name, :age, :number_of_pets

     def initialize(name, age, email)
          @name = name
          @age = age
          @email = email
     end
end

# p1 = Person.new("Kat", 25, "kat@gmail.com")
# p2 = Person.new("Diego", 28, "dppalma@gmail.com")

