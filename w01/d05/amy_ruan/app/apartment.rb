class Apartment
  attr_accessor :sqft, :num_bedrooms, :num_baths, :renters, :price

  def initialize
    @renters = []
  end

  def make_price
    @price = ((@sqft.to_i * 120)+(20000*@num_bedroom.to_i)+(15000*@num_baths.to_i))
  end

  def count_renters
    renters_count = @renters.length
  end

  def is_occupied?
    !@renters.empty?
  end

  def gender_ratio
    i = 0
    number_of_female = 0
    number_of_male = 0
    while i < @renters.length
      if @renters[i].gender =="female"
        number_of_female += 1
      else
        number_of_male += 1
      end
    i += 1
    end
    print "The ratio of female to male is #{number_of_female}:#{number_of_male}"
  end
end
