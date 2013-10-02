class Apartment
     attr_accessor  :sqft, :num_bedrooms, :num_baths, :renters, :is_occupied?, :price

     def initialize
          @is_occupied = false
     end

end
