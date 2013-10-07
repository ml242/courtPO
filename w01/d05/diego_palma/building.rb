class Building
     # provides attributes to our object Building
      attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments

# I still haven't fully understand the concept of initialize.   initialize method is called everytme a new object  is created based of the Building class?
      def initialize
          @num_floors = num_floors
          @apartments = []
          @count_people = []
          @count_apartments_available = []
      end

      def count_people
          people = @count_people.length
          total_people = "This building is occupied by #{people} renter"
      end

      def count_apartments_available
           #Not really sure how to do this
      end
 end




