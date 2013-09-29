require 'pry'
require_relative "apartment"
require_relative "building"


class Person
  attr_accessor :name
  attr_accessor :age
  attr_accessor :gender
  #APARTMENT ??????????????

#only include the values to be given at initialize
  def initialize(name, age, gender, apartment)
    @name= name
    @age = age
    @gender= gender
    #Apartment = apartment
  end

  def is_occupied?()
    #allows user to query if apartment is occupied or not
  end

end













