require 'pry'
require_relative 'marketing'

class Distillery
  attr_reader :cellar, :name
  def initialize(name)
    @cellar = []
    @marketing_dep = MarketingDepartment.new
    @name = name
  end

  def brew_beverage
    new_name = @marketing_dep.produce_bev_name
    new_bev = Beverage.new(new_name, self)
    @cellar << new_bev
    new_bev
  end

  def sell_beverage(beverage)
    @cellar.delete beverage
  end

  def beverage_count
    @cellar.count
  end
end

class Person
  attr_reader :BAL, :name, :fridge
  def initialize(name)
    @name = name
    @fridge = []
    @BAL = 0.0
  end

  def buy_beverage(bev)
    bev.distillery.sell_beverage(bev)
    @fridge << bev
  end

  def drink_beverage bev
    @BAL += 0.02 if @fridge.include? bev
    @fridge.delete bev
  end

end

class Beverage
  attr_reader :distillery

  def initialize(name, distillery)
    @name = name
    @distillery = distillery
  end
end
