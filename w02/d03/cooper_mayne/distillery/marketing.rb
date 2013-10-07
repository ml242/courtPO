require 'faker'

class MarketingDepartment
  def produce_bev_name
    name = Faker::Commerce.product_name
  end
end
