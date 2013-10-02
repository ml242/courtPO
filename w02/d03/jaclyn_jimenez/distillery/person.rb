class Person

  def initialize(name)
    @name = name
    @blood_alcohol_level = 0
    @liquor_cabinet = []
  end

  def liquor_cabinet
    @liquor_cabinet
  end

  def blood_alcohol_level=(new_level)
    @blood_alcohol_level = new_level
  end

  def buy_beverage(bev)
    # A person should be able to buy a beverage. Once a person buy's a beverage,
    # they keep it somewhere until the 'drink_beverage' method is called
    @liquor_cabinet << bev
  end

  def blood_alcohol_level
    @blood_alcohol_level
  end

  def drink_beverage(bev)
    if self.liquor_cabinet.length > 0
      @blood_alcohol_level += 0.02
      self.liquor_cabinet.delete(bev)
    else
      puts "I think you've had enough"
    end
  end

end