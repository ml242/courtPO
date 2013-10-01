require 'pry'
require 'pry-nav'
require 'pry-remote'

class Building
  attr_accessor :address
  attr_reader :apartments, :num_floors

  def initialize(address, apartments_per_floor)
    @address = address
    @apartments_per_floor = apartments_per_floor
    @is_walkup = true
    @has_doorman = false
    @num_floors = 0
    @apartments = {}
  end

  def give_elevator
    @is_walkup = false
  end

  def walkup?
    @is_walkup
  end

  def give_doorman
    @has_doorman = true
  end

  def doorman?
    @has_doorman
  end

  def add_apartment(apartment)
    @apartments[apartment.apartment_id.to_sym] = apartment.get_apartment_info
    @num_floors = (@apartments.keys.length / @apartments_per_floor.to_f).ceil
    apartment.building = self
  end

  def count_people
    @people_counted = 0
    people_in_apts = []
    @apartments.each_value do |apartment|
      if apartment[:renters].length > 0
        people_in_apts << apartment[:renters].length
      end
    end
    people_in_apts.each do |people|
      @people_counted = people + @people_counted
    end
    @people_counted
  end

  def count_apartments_available
    @available_apartments = 0
    @apartments.each_value do |apartment|
      if apartment[:is_occupied] == false
        @available_apartments += 1
      end
    end
    @available_apartments
  end

  def show_building
    @has_doorman ? doorman = "doorman" : doorman = "non-doorman"
    @is_walkup ? walkup = "walkup" : walkup = "elevatored"
    puts "This is a #{doorman} #{walkup} building located at #{@address}. It has #{@apartments.keys.length} apartment units on #{@num_floors} floors, and #{@available_apartments} are currently vacant. There are #{@people_counted} total tennants."
    puts '---------'.color('ffffff')
    i = 0
    until i == @num_floors
      puts '|[]   []|'.color('ffffff')
      i += 1
    end
    puts '| _____ |'
    puts '| o~|~o |'
    puts '| |_|_| |'.color('ffffff')
  end
end