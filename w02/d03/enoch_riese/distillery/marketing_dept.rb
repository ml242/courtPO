require 'faker'

class Marketing_dept

  def generate_clever_name
    Faker::Company.name()
  end
end