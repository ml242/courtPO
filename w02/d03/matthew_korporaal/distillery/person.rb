class Person

  # When a new person is created, it should also initialize their blood alcohol level to 0.
  def initialize(name)
    @name = name
    @fridge = []
    @bac = 0.0
  end

  # Adds beverage to person's store
  def buy_beverage(beverage)
    @fridge << beverage
  end

  # Removes drink from persons store and increases their BAC
  def drink_beverage
    if @fridge.length > 0
      beverage = @fridge.sample
      @fridge.delete(beverage)
      @bac += 0.02
    else
      return nil
    end
  end

end