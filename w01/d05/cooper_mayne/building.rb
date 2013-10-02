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

  def add_apartment (apartment_object, floor)  # note: ground floor is 1 -- but it is 0 in the array...
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
    @apartments.flatten.select{ |apt| !apt.is_occupied? }.count
  end

  def count_renters
    @apartments.flatten.map {|apt| apt.renters.count }.inject(:+)
  end

  def m_f_ratio
    #males = @apartments.flatten.map {|apt| apt.renters}.flatten.select{|renter| renter.gender="male"}.count
    #males/(self.count_renters-males)

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
    @apartments.flatten.select{|apt| apt.is_occupied?}.map{|apt| apt.price}.inject(:+) #is there a way to make this more readable? 
    #rent_collected = 0
    #@apartments.flatten.each do |apartment|
      #rent_collected += apartment.price if apartment.is_occupied?
    #end
    #rent_collected
  end
end
