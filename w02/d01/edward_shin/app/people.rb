class Person
	attr_accessor :name, :number_of_children, :age, :pets

	def initialize(name, age, number_of_children)
		@name = name
		@age = age
		@number_of_children = number_of_children
		@pets = {}
	end

	def adopt(animal)
		name = animal.name
		@num_of_pets << name
	end

	def up_for_adoption(animal)
		pet = @pets.index(animal)

	end


end