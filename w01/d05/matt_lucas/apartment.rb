require 'pry'
require_relative 'car'
require_relative 'person'


class Apartment
  attr_accessor :sqft, :num_bed, :num_bath, :num_renters, :price
  def initialize
  @occupied  = false

  end