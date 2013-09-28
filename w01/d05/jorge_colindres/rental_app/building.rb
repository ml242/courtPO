class Building
  attr_accessor :address, :num_floors, :apartments

  def initialize
    @is_walkup = true
    @has_doorman = false
    @apartments = Hash.new
  end

  def give_elevator
    @is_walkup = false
  end

  def walkup?
    @is_walkup
  end

  def give_doorman
    @has_doorman = true
  end

  def doorman?
    @has_doorman
  end

  def add_apartment(apartment_id, apartment_info)
    @apartments[apartment_id] = apartment_info
  end

  def count_people
    people_in_apts = []
    @apartments.each_value do |apartment|
      if apartment[:renters].length > 0
        people_in_apts << apartment[:renters].length
      end
    end
    people_in_apts.length
  end

  def count_apartments_available
    available_apartments = 0
    @apartments.each_value do |apartment|
      if apartment[:is_occupied] == false
        available_apartments += 1
      end
    end
    available_apartments
  end
end