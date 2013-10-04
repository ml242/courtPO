class Distillery

# When a new distillery is created, a new marketing department should be created at the same time and should be pointed to by an instance variable of the new distillery object.

  def initialize
    @marketing_department = Marketing.new
    @cellar = []
  end

  def new_distillery(name)
    dist = Distillery.new(name)
  end

# Creates a new beverage and stores it into the cellar of the distillery.

# For each beverage object created, ask the marketing department for a new name to name the beverage.

  def brew_beverage
    beverage_name = @marketing_department.generate_clever_name
    beverage = Beverage.new(beverage_name)
    @cellar << beverage
  end

# Removes the beverage from the cellar of the distillery

  def sell_beverage
    @cellar.pop
  end

# Gives the number of beverages the distillery has in the cellar

  def beverage_count
    @cellar.size
  end

end
