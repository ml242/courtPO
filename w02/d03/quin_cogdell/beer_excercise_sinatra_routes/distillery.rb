class Distillery

  def initialize(name)
    @name = name
    @marketing_department = Marketing_Department.new
    @cellar = []

  end

  def name=(input_name)
    @name = input_name
  end

  def name
    @name
  end

  def cellar=(new_beverage)
    @cellar << new_beverage
  end

  def brew_beverage
    bev_name = @marketing_department.generate_clever_name
    beverage = Beverage.new(bev_name)
    @cellar << beverage
    beverage
  end

  # def sell_beverage
  #   @cellar.pop
  # end

#not doing this for now
  def sell_beverage(name)
    @cellar.delete(name)
  end

  def beverage_count
    @cellar.size
  end


end