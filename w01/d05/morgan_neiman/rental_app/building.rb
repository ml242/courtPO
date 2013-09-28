class Building
attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments, :renters
# Initializes building object
  def initialize(address, style, num_floors, has_doorman, is_walkup)
    @address = address
    @style = style
    @num_floors = num_floors
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @apartments = {}
  end
  # Adds apartment array and stores to hash, calls on apartment class.
  def add_apartment(apartment_number, price, sqft, num_beds, num_baths)
    a1 = Apartment.new(apartment_number, price, sqft, num_beds, num_baths)
    @apartments[:apartment_number] = a1.to_a
  end
  def add_renter(name, age, gender, apartment_number)
    r1 = Person.new(name, age, gender)
    @apartment_number[:apartment_number] << r1.to_a
  end
  def doorman_to_s
    if @has_doorman
      @doorman = "has a doorman"
    else
      @doorman = "does not have a doorman"
    end
  end
  def walkup_to_s
    if @is_walkup
      @walkup = "is a walkup"
    else
      @walkup = "is not a walkup"
    end
  end
  def to_s
    "This building is at #{@address},
    is #{@style} style, #{@walkup} #{@doorman}
     has #{@num_floors} floors and #{@apartments.length} apartments."
  end
  def count_renters

  end
  def count_apartments_available
    apts_available = @apartments.length - @renters.length
  end
end