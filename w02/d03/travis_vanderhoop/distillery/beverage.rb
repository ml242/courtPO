class Beverage

  def initialize()
    @name = Faker::Company.name()
  end

  def name()
    @name
  end


end