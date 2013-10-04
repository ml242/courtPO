class Distillery

  def initialize(name)
    @name = name
    @marketing_department = MarketingDepartment.new
    @cellar = []
  end

  def name
    @name
  end

  def cellar
    @cellar
  end

  def brew_beverage(type)
    alcohol_level = BAL_INFO.fetch(type)
    clever_name = @marketing_department.generate_clever_name
    @cellar << Beverage.new(clever_name, alcohol_level)
  end

  def sell_beverage
    @cellar.pop
  end

  def beverage_count
    @cellar.size
  end
end