class Person

# When a new person is created, it should also initialize their blood alcohol level to 0.

# A person should be able to buy a beverage. Once a person buy's a beverage, they keep it somewhere until the 'drink_beverage' method is called

  def initialize(name)
    @name = name
    @bac = 0
    @beverage_storage = []
  end

  def buy_beverage(beverage)
    @beverage_storage << beverage
  end

# When this method is called, a beverage is removed from the person's stores of beverages and then their blood alcohol level is increased by .02. If there are no more beverages to drink, have this function return nil and their blood alcohol level should not change.

  def drink_beverage
    if @beverage_storage.length > 0
      beverage = @beverage_storage.sample
      @beverage_storage.delete(beverage)
      @bac += 0.02
    else
      return nil
    end
  end

end