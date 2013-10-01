class Owner
  attr_accessor :name, :age, :num_pets, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def adopt
    # take given animal and put it into @pets
    # push ownerless animal into adopter's @pets array
  end

  def disown()
    # search array for value of disowned pet
    # determine its index value
    # remove that item from the array
  end

  def num_pets

  end

end