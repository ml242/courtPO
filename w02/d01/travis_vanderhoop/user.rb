class User

  attr_accessor :name, :age

  def to_s
    "<name: #{@name}, age: #{@age}>"
  end

end