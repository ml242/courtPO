class Apartment
	attr_accessor :sqft, :num_bedrooms, :num_baths, :price, :apartment_num, :renters
	
	def initialize(sqft, num_bedrooms, num_baths, price, apartment_num)
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_baths = num_baths
		@renters = []
		@price = price 
		@apartment_num = apartment_num
	end

	def add_renter(person)
		@renters << person
	end

	def move_out(person)
		@renters.delete(person)
	end

	def is_occupied?
		@renters.count > 0
	end

end