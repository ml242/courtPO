require 'pry'
require_relative "apartment"
require_relative "building"


class Person
  attr_accessor :name, :age, :gender, :apartment

#only include the values to be given at initialize
  def initialize(name, age, gender, apartment)
    @name= name
    @age = age
    @gender= gender
    @apartment = [apartment]
  end

end



person1 = Person.new("Bob",   40, "male",   ["666 Park Ave", :A1])
person1 = Person.new("Sue",   38, "female", ["666 Park Ave", :A1])
person1 = Person.new("Joe",   25, "male",   ["666 Park Ave", :B1])
person1 = Person.new("Al",    45, "male",   ["666 Park Ave", :C1])
person1 = Person.new("Jane",  42, "female", ["666 Park Ave", :C1])




####------------------------------------------------------
# Phil's code



