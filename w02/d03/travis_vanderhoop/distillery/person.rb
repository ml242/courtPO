class Person
  def initialize(name)
    @name = name
    @bac = 0.to_f
    @fridge = []
  end

  def buy_beverage(distillery)
    @purchased_bev = distillery.cellar.sample
    @fridge << @purchased_bev
    distillery.sell_beverage(@purchased_bev) if distillery.cellar.include? @purchased_bev
  end

  def drink_beverage
    if @fridge.length > 0
      beverage = @fridge.sample
      @fridge.delete(beverage)
      @bac += 0.02
    end
  end


end