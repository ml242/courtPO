require 'faker'

class MarketingDepartment

  def generate_clever_name
    Faker::Commerce.product_name
  end

end