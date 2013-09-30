class Shelter
  attr_accessor :name, :manager, :owners, :animals

  def initialize
    @owners = []
    @animals = []
  end

end