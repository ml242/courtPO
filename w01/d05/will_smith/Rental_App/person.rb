require 'pry'
require 'pry-nav'
require 'pry-remote'

class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def person_info
    puts "My name is #{@name}. I'm a  #{@age} year old #{@gender}.  I'm proud to say I live in apartment #{@apartment}."
end