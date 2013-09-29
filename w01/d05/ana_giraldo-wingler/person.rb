class Person
  attr_accessor :name, :age, :gender, :apartment

  @count = 0

  class << self
    attr_accessor :count
  end

  def initialize
    self.class.count += 1
  end

end