require 'pry'

class Building

  attr_reader :address
  attr_reader :has_doorman
  attr_reader :is_walkup
  attr_reader :num_floors
  attr_reader :apartments
  attr_accessor :count_people
  attr_accessor :count_appartments_available

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
    @count_appartments_available = count_appartments_available
  end

  def count_people
    []
  end
  def count_apartments
    binding.pry
    apartments_list = @apartments.values.flatten
    apartments_list.compact.length
  end

  def count_appartments_available
    [].length
  end
end

class Apartment
  attr_reader :sqft
  attr_reader :num_bedrooms
  attr_reader :num_baths
  attr_accessor :renters
  attr_accessor :is_occupied
  attr_accessor :price

  def initialize(sqft, num_bedrooms, num_baths, price, building, floor)
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @renters = []
    @is_occupied = is_occupied?
    @price = price
    @building = building
    @floor = floor
    building.apartments[@floor] << self
  end

  def is_occupied?
    @renters != []
  end
end

class Person
  attr_reader :name
  attr_reader :age
  attr_accessor :apartment

  @database = {}
  @id = 0

  def self.store(person)
    @id += 1
    @database[@id] = person
  end

  def self.find(id)
    return @database[id]
  end

  def initialize(name, age, apartment)
    @name = name
    @age = age
    @apartment = apartment
    @apartment.renters << self
    # self.store(name)
  end
end

b1 = Building.new
b1.intialize("140 Franklin St", true, false, 6)
b1a1 = Apartment.new(3000, 3, 2, 5000, b1, 1)
b1a2 = Apartment.new(2000, 2, 1, 3000, b1, 1)
p1 = Person.new("James", 22, b1a1)
puts b1.count_apartments