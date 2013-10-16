require 'faker'

class Marketing

  def initialize
  end

  def generate_clever_name
    Faker::Company.name()
  end

end