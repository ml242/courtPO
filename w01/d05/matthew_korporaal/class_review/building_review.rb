# address String
# has_doorman Boolean
# is_walkup Boolean
# num_floors Integer
# apartments hmmm
# count_people method def count_renters
# count_apartments_available method def count_apartments_available

class Building
  attr_accessor :name, :apartments

  # attr_accessors make these class methods
  # def apartments
  #   @apartments
  # end
  # def apartments=(apt)
  #   @apartments = apt
  # end

  def initialize(address, has_doorman, is_walkup, num_floors)
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = []

  end

  def doorman?
    @has_doorman
  end

  def count_people
    #set a counter
    total_renters = 0
    #loop through the apt array
    @apartments.each do |apartment|
    #count the umber of people in each array
    # length is the same is count and size
    total_renters += apartment.tenants.length
    #return the total renters
    end
  total_renters
  end

  def count_apartments_available
    #set counter
    total_available = 0
    #loop throught the apartment array
    @apartments.each do |apt|
      #count the number of apartments that arent='t occupied
        total_available += 1 if !apt.occupied?
    end
    #reutn the total number
    total_available
    # adds a plus sign between the tenants then takes out. a way
    # used for adding. inject and reduce do the same thing
    # b1.apartments.map {|apt| tenants.size }.inject(:+)
    # b1.apartments.map {|apt| tenants.size }.reduce(:+)
  end

  def inquiry_string
    "There are #{count_people} apartments available"
  end

  def to_s
    "#{name} is a cozy building. #{inquiry_string}"
  end
end