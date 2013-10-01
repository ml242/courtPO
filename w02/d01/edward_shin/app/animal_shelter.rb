class Shelter
	attr_accessor :name, :people, :animals

	def initialize(name)
		@name = name
		@people = []
		@animals = {
			CAT => Array.new,
			DOG => Array.new
		}
	end

	def add_person(person)
		@people << person
	end

	def add_animal(animal)
		type = animal.species
		array = @animals[type]
		array << animal.name
	end 

	def adopt_animal(animal)
		
	end

end