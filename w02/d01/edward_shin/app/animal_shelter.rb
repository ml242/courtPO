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
		@people << person.name
	end

	def add_animal(animal)
		type = animal.species
		array = @animals[type]
		array << animal.name
	end 

	def adopt_animal(person, type, animal)
		array = @animals[type]
		adopted = array.delete(animal)
		puts adopted
		person.adopt(animal)
		return person.pets
	end

end