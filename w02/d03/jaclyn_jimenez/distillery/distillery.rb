class Distillery

  def initialize(name)
    @name = name
    @cellar = {}
    # When a new distillery is created, a new marketing department should be created at the same time
    # and should be pointed to by an instance variable of the new distillery object.
    @marketing_dept = Marketing_Department.new
  end

  def name
    @name
  end

  def marketing_dept()
    @marketing_dept
  end

  def cellar
    @cellar
  end

  def brew_beverage()
    bev_name = @marketing_dept.generate_beverage_name
    new_beverage = Beverage.new(bev_name)
    #For each beverage object created, ask the marketing department for a new name to name the beverage.
    @cellar[new_beverage.name] = new_beverage
  end
  def sell_beverage(beverage)
    @cellar.delete(beverage)
  end

  def beverage_count
    @cellar.length
  end

end