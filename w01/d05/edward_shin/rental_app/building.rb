class Building 
	attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments
	
	def initialize(address, has_doorman, is_walkup, num_floors)
		@address = address
		@has_doorman = true
		@is_walkup = false
		@num_floors = num_floors
		@apartments = {} 
	end 

	def add_apt( floor, array)
		@apartments[floor] = {}
		i = 0
		while i < array.count
			@apartments[floor][array[i]] = []
			i = i + 1
		end
		return @apartments
	end

	def add_people(floor, apt, renter)
		@apartments[floor][apt] << renter
	end

	def count_people
		sum = 0
		i = 0
		while i < @apartments.length
			n = 0
			while n < @apartments.values[i].length
				sum = sum + @apartments.values[i].values[n].length
				n =  n + 1
			end
			i = i + 1
		end
		return sum
	end

	def total_apartments
		total_apartments = 0 
 		i = 0
 		while i < @apartments.values.length
			total = @apartments.values[i].count
			total_apartments = total + total_apartments
			i = i + 1
		end
	return total_apartments
	end

	def count_apartments_available
		available = 0 
		i = 0
		while i < @apartments.length
			n = 0
			while n < @apartments.values[i].length
				if  @apartments.values[i].values[n].empty?
					available = available + 1
				end
				n = n + 1
			end
			i = i + 1
		end
		return available
	end


end