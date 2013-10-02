require 'faker'

class Marketing_Department

  #def initialize()
#   we actually don't need an initialize method because theres nothing to but here
 # end

  def generate_clever_name()
    @company_name = Faker::Company.name()
    @company_name
  end

  def generate_beverage_name()
    beverage_name = (Faker::Name.name)
    beverage_name
  end

end