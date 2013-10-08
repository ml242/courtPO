class Person

  def initialize (name)
    @name = name
    @bac = 0
    @cooler = []
  end

  def name=(input_name)
    @name =input_name
  end

  def name
    @name
  end

  def buy_beverage(beverage)
    @cooler << beverage
    #distillery.sell_beverage
  end

  def drink_beverage
    if @cooler.size > 0
      drink = @cooler.sample
      @cooler.delete(drink)
      @bac += 0.02
    else
      puts "You don't have any drinks left!"
    end
  end



end