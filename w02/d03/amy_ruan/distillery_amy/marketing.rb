require 'faker'
class Marketing

  def initialize()
  end

  #or you can do
  # def initialize()
  #   @generate_clever_name = Faker::Company.name()
  # end



  def generate_clever_name
    Faker::Company.name()
  end

end