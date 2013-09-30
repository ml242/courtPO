class Building
  attr_accessor :apartments, :has_doorman
  attr_reader :address, :is_walkup, :num_floors, :floor_capacity
  def initialize ( address, has_doorman, is_walkup, num_floors )
    @address = address
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = [] #how should this be set up? 
    @floor_capacity = []
    @num_floors.times do
      @apartments.push []
      @floor_capacity.push rand(3..5)
    end
  end

  def add_apartment (apartment_object, floor)
    # floor 1 is ground floor
    if floor <= @apartments.size && floor > 0 && space_left?(floor)
      @apartments[floor-1].push (apartment_object)
    else
      puts 'ERROR...with add_appartment'
    end
  end

  def space_left?(floor)
    @floor_capacity[floor-1] - @apartments[floor-1].size > 0
  end

  def count_apartments_available
    count = 0
    @apartments.flatten.each do |apartment|
      count += 1 unless apartment.is_occupied?
    end
    count
  end

  def count_renters
    count = 0
    @apartments.flatten.each do |apartment|
      count += apartment.renters.count
    end
    count
  end

  def m_f_ratio
    males = 0.0
    females = 0.0
    @apartments.flatten.each do |apartment|
      apartment.renters.each do |renter|
        males += 1.0 if renter.gender == 'male'
        females += 1.0 if renter.gender == 'female'
      end
    end
    males/females
  end

  def collect_rent
    rent_collected = 0
    @apartments.flatten.each do |apartment|
      rent_collected += apartment.price if apartment.is_occupied?
    end
    rent_collected
  end
end
