require 'pry'
require_relative 'apartments.rb'
require_relative 'people.rb'""

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
  def add_apartment(apartment_number, sqft, num_beds, num_baths)
    new_apt = Apartment.new(apartment_number, sqft, num_beds, num_baths)
    apartment_number = apartment_number.to_sym
    @apartments[apartment_number] = {
      price: new_apt.instance_variable_get(:@price),
      sqft: sqft,
      num_beds: num_beds,
      num_baths: num_baths,
      renters: new_apt.instance_variable_get(:@tenants),
      apt_object: new_apt
    }
# Sets building variable in apartment object as building address
    new_apt.instance_variable_set(:@building, @address)
  end
  # Adds tenant, calls on person class.
  def add_renter(name, age, gender, apartment_number)
    new_renter = Person.new(name, age, gender)
    apartment_number_sym = apartment_number.to_sym
    renter_name = name.to_sym
    new_renter_hash = {
      name: name,
      age: age,
      gender: gender,
      person_object: new_renter
    }
    # Stores new renter's qualities as array in apartments hash. Key is apartment number.
    @apartments[apartment_number_sym][:renters][renter_name] = new_renter_hash
    # Sets apartment variable in person object to apartment number string.
    new_renter.instance_variable_set(:@apartment, apartment_number)
    # Sets building variable in person object to building address.
    new_renter.instance_variable_set(:@building, @address)
  end
  def remove_renter(name, apartment_number)
    renter_name = name.to_sym
    apartment_number = apartment_number.to_sym
    @apartments[apartment_number][:renters].delete(renter_name)
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
    return apts_available
  end
end