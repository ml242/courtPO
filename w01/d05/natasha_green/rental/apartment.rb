=begin
|Attributes of Apartment Class|Ruby Type|
|:----------|:-----------|
|sqft|Integer|
|num_bedrooms|Integer|
|num_baths|Integer|
|renters|hmmmmmm|
|is_occupied?|A Method `def is_occupied?`|
|price|Float|
=end

class Apartment
	attr_accessor :sqft, :num_bedrooms, :num_baths, :renters, :price
	
	def initialize
		is_occupied = @false
	end
	
	def occupied
		is_occupied = yes
	end
	
	def not_occupied 
		is_occuped = no
	end
	
end