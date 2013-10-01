=begin
|Atrributes of Building Class |Ruby Type|
|:----------|:-----------|
|address|String|
|has_doorman|Boolean|
|is_walkup|Boolean|
|num_floors|Integer|
|apartments|hmmmm|
|count_people|method `def count_renters`|
|count_apartments_available|method `def count_apartments_available`|
=end

class Building
	attr_acessor :address, :has_doorman, :is_walkup, :num_floors, :apartments, :count_people, :count_apartments_available
	def initialize
		:has_doorman = true
		:is_walkup = true
	end 
	
end