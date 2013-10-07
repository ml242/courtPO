require 'pry'
require_relative "apartment"
require_relative "person"


class Builiding
  attr_writer :address
  attr_accessor :has_doorman, :is_walkup, :num_floors, :apartments

#only include the values to be given at initialize
  def initialize(address, doorman=true, walkup=true, number_of_floors) #, list_of_apts
    @address      = address
    @has_doorman  = doorman
    @is_walkup    = walkup
    @num_floors   = number_of_floors
    @apartments   = [] #Apartment.new
    # build the apartment.new function into this
  end

  # def create_apartments(apt_to_create)
  #   apt_to_create.keys.each do |apt_num|
  #      @apartments << apt_num = Apartment.new(apt_to_create.values.each {|val| apt_to_create[val][0],
  #                             apt_to_create.values[1],
  #                             apt_to_create.values[2],
  #                             apt_to_create.values[3],
  #                             apt_to_create.values[4],)
  #   end
  # end

}

  def count_apartments_available()
    #counts the number of available apartments in each building
  end


end


Building1 = Building.new ("666 Park Avenue", true, false, 12)
Building2 = Building.new ("1 Beacon Court", true, false, 55)



#QUESTIONS
  #can I put apartments into buildings when I'm building the building?
  #are apartments with the same name in different buidlings treated differently or do I need to come up with and ID number?




# TRIED TO CREATE A METHOD TO AUTO-CREATE THE APARTMENTS, got an error using the apt_num as the assignment for the Apartments.new()
# def create_apartments(apt_to_create )
#   apt_to_create.keys.each do [apt_num]
#     apt_num.to_s = Apartment.new(apt_to_create.values[0],
#                             apt_to_create.values[1],
#                             apt_to_create.values[2],
#                             apt_to_create.values[3],
#                             apt_to_create.values[4],)
#   end
# end


# apt_to_create = {
#   "A1"  => [750,  1, 1, 1700, 2],
#   "A2"  => [1000, 1, 2, 2200, 2],
#   "A3"  => [1100, 2, 2, 2600, 0],
#   "A4"  => [1400, 3, 2, 3500, 4],
# }




# A1 = Apartment.new(750,  2, 1, 1700, 1)
# B1 = Apartment.new(1000, 1, 2, 2200, 2)
# C1 = Apartment.new(1100, 2, 2, 2600, 0)
# D1 = Apartment.new(1400, 3, 2, 3500, 4)

# A2 = Apartment.new(1750, 3, 2, 4000, 3)
# B2 = Apartment.new(1100, 2, 2, 2600, 2)
# C2 = Apartment.new(1400, 3, 2, 3500, 0)

# A3 = Apartment.new(1750, 3, 2, 4000, 0)
# B3 = Apartment.new(2500, 5, 4, 6100, 5)


####------------------------------------------------------
# Phil's code from app.rb

require'pry'
require_relative "building"
require_relative "apartment"
require_relative "tenant"




####------------------------------------------------------
# Phil's code from building

class Building
  attr_accessor :name, :apartments
  #using attr_accessor
    # def apartments
      # @apartments
    # end
    #def apartments=(apt)
      # @apartments = apt
    # end
  def initialize
    @apartments = []
  end

  def count_people
    #set counter
    total_renters = 0
    #loop through the apartment array
    @apartments.each do |apartment|
    #count the number of people in each array
    total_renters += apartment.tenants.count
    #return the total number of renters
    end
  end

  def count_apartments_available
    #set a counter
    total_available = 0
    #loop through the apartment array
    @apartments.each do |apt|
    #count the number of apartments that aren't occupied
      total_available += 1 if !apt.occupied?
        #alternate:  total_available += 1 unless apt.occupied?
    #return the total number
  end

  def inquiry_string
    "There are #{count_apartments_available} apartments available."
  end

  def to_s
    "#{name} is a cozy building with charm. #{inquiry_string}"
  end





