class Person

  def initialize(name)
    @name = name
    @alcohol_level = 0
    @beverages = []
  end

  def name
    @name
  end

  def check_drunkness
    @alcohol_level
  end

  def beverages
    @beverages
  end

  def buy_beverage(beverage)
    @beverages << beverage
  end

  def drink_beverage
    beverage_drunk = @beverages.pop
    increase_bal = beverage_drunk.bal
    @alcohol_level += increase_bal
  end

end