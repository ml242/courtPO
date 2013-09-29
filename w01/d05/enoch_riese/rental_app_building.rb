require 'pry'
require_relative 'rental_app_apartment'
require_relative 'rental_app_person'

class Building

  attr_reader :address
  attr_reader :has_doorman
  attr_reader :is_walkup
  attr_reader :num_floors
  attr_reader :apartments
  attr_accessor :count_people
  attr_accessor :count_apartments_available

  def intialize(address, has_doorman, is_walkup, num_floors)
    @address = address
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = {}
    x = 1
    num_floors.times do
      @apartments[x] = []
      x+=1
    end
    @count_people = count_people
    @count_apartments_available = count_apartments_available
  end

  def count_people
    apartments_list = @apartments.values.flatten
    people_count = 0
    apartments_list.each {|apt| people_count += apt.renters.length}
    people_count
  end

  def count_apartments
    apartments_list = @apartments.values.flatten
    apartments_list.compact.length
  end

  def count_apartments_available
    apartments_list = @apartments.values.flatten
    empty_apartments = []
    apartments_list.each {|apt| empty_apartments << apt if apt.is_occupied? == true}
    empty_apartments.length
  end

  def count_full_apartments
    all_apts = count_apartments
    empty_apts = count_apartments_available
    all_apts - empty_apts
  end
end