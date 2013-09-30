class Person
	attr_accessor :name, :age, :gender, :apartment
	
	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
		@apartment = []
	end

	def apt_num(apartment)
		@apartment << apartment
	end
end


