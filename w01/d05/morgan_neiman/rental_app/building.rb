require 'pry'
require_relative 'apartments.rb'
require_relative 'people.rb'

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
    new_apt = Apartment.new(apartment_number, price, sqft, num_beds, num_baths)
    apartment_number = apartment_number.to_sym
    @apartments[apartment_number] = {
      apt_object: new_apt ,
    # Stores tenants variable from apartments class as separate key/value pair for easier access.
      renters: @tenants
    }
  end
  # Adds tenant, calls on person class.
  def add_renter(name, age, gender, apartment_number)
    r1 = Person.new(name, age, gender)
    # Stores new renter's qualities as array in apartments hash. Key is apartment number.
    @apartments[:apartment_number] << r1.to_a
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
    total_renters = 0
    @apartments.each_key do |k|
      one_apt_renters = @apartments[x][:renters].length
      total_renters += one_apt_renters
    end
    return total_renters
  end
  def count_apartments_available
    apts_available = 0
    apts_occupied = 0
    @apartments.each_key do |k|
      if @apartments[k][:renters].length == 0
        apts_available += 1
      else
        apts_occupied += 1
      end
    end
  end
end