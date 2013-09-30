class Building
  attr_accessor :address, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize
    @apartments = []
  end


  def count_apartments_available()
    apartment_count = @apartments.length
  end

 def count_people()
    i = 0
    x= 0
    while i < @apartments.length
      people_count = @apartments[i].renters.length
      x += people_count
      i += 1
    end
    print x
  end

end

