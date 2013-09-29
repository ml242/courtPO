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