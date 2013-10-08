class Tenant
  attr_accessor :name, :age, :gender, :apartment, :building
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end