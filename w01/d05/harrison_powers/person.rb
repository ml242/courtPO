class Person
	attr_accessor :name, :age, :gender, :apartment

  @count = 0
  class << self
    attr_accessor :count
  end

	def initialize(name, age, gender)
		@name = name #string
		@age = age #integer
		@gender = gender #string
    self.class.count += 1
	end

  def change_name(new_name)
    @name = new_name
  end

end