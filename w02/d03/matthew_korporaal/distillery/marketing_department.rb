require 'faker'

class MarketingDepartment

  def initialize
  end

  def generate_clever_name
    Faker::Company.name()
  end

end