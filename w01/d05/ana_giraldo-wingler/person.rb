class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize
    r = Random.new
    @age = r.rand(1..100)
    @name = Faker::Name.name
    @gender = ["male", "female"].sample
  end

end