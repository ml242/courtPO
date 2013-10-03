class Distillery
  # When a new distillery is created, a new marketing department should be created at the same time and should be pointed to by an instance variable of the new distillery object.

  def initialize(dist_name)
    @name = dist_name
    @marketing_department = MarketingDepartment.new
    @cellar = []
  end

  # dist.brew_beverage()

  def brew_beverage
    beverage_name = @marketing_department.generate_clever_name
    beverage = Beverage.new(beverage_name)
    @cellar << beverage
  end

  # Creates a new beverage and stores it into the cellar of the distillery.

  # For each beverage object created, ask the marketing department for a new name to name the beverage.


  # dist.sell_beverage()

  def sell_beverage
    @cellar.pop
  end

  # Removes the beverage from the cellar of the distillery

  def beverage_count
    @cellar.size
  end

  # dis.beverage_count

  # Gives the number of beverages the distillery has in the cellar.
end