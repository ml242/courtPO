require 'pry'
require 'pry-nav'
require 'pry-remote'

class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize

  end
end

p1 = Person.new

binding.pry