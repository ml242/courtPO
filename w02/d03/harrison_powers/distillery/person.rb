class Person
	
	def initialize
		@name = Faker::Name.name
		@bac = 0.0
		@drinks = Hash.new
	end

	def buy_beverage(bev)
		@drinks[bev.name.to_sym] = bev
	end

	def drink_beverage(bev)
		@drinks.delete(bev.name.to_sym)
		@bac += 0.02
	end

	def drinks
		@drinks
	end

	def name
		@name
	end

	def bac
		@bac
	end

end