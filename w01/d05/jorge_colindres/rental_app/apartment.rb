require 'pry'
require 'pry-nav'
require 'pry-remote'

class Apartment
  attr_accessor :sqft, :num_bedrooms, :num_baths, :renters, :price

  def initialize
    @is_occupied = false
  end

  def occupy
    @is_occupied = true
  end

  def occupied?
    @is_occupied
  end
end

a1 = Apartment.new

binding.pry