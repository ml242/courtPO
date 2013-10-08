 require 'faker'

class MarketingDept
  def initialize()
    @name = "Marketing Department"
  end

  def generate_clever_name()
    Faker::Company.name()
  end


end