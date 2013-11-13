require 'pry'
# require_relative 'main'
# require_relative 'person'
# require_relative 'apartment'


class Building
  attr_accessor :name, :number, :people, :ct_people, :apt_total, :apt_occ, :apt_empt
end
def initialize
  def ct_people
    "The building has #{people.length}"
  end
end

b1 = Building.new
puts b1

b1.name = "The Factory",
b1.number = "11",
b1.apt_total = [12],
b1.apt_occ = 12,
b1.apt_empt = 0

puts b1




# (:name => "TheRubberStampFactoryLofts", :people => true )