require_relative 'marketing'

class Beverages

  BAL_INFO = {
  :tequila => 0.10,
  :beer => 0.45,
  :whisky => 0.5,
  :rum => 0.4,
  :vodka => 0.55,
  :cider => 0.3
}

  def initialize(name)
    @name = name
    @type = BAL_INFO.keys.sample
    @bal_level = BAL_INFO[@type]
  end

  def name
    @name
  end

  def type
    @type
  end

  def bal_level
    @bal_level
  end
end

class Distillery

  def initialize()
    @marketing = Marketing.new
    @name = @marketing
    @cellar = []
  end

  def name
    @name
  end

  def cellar
    @cellar
  end

  def cellar=()
    @cellar = ()
  end

  def brew_beverage()
    bev_name = @marketing.generate_clever_name
    beverage = Beverages.new(bev_name)
    @cellar<< beverage
  end

  def add_beverage(beverage)
    @cellar << beverage
  end

  def sell_beverage
    @cellar.pop
  end

  def count_beverage()
   @cellar.length
  end
end


class People
  def initialize(name)
    @name = name
    @drinks = []
    @bac = 0.0
  end

  def name
    @name
  end

  def drinks
    @drinks
  end

  def drinks=()
    @drinks = ()
  end


  def buy_beverage(beverage)
    @drinks << beverage
  end

  def drink_beverage(beverage)
     if @drinks.length > 0
      @drinks.delete(beverage)
      @bac += 0.02
    else
      return nil
    end
  end

end