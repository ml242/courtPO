require 'pry'

class Distillery
  def initialize(name)
    @name = name
    @marketing_dept = MarketingDept.new()
    @cellar = []
  end

  def marketing
    @marketing_dept
  end

  def sell_beverage(beverage_instance)
    @cellar.delete(beverage_instance)
  end

  def beverage_count
    @cellar.size
  end

  def cellar
    @cellar
  end

  def brew_beverage()
    @name = Beverage.new
    @cellar << @name
  end

end