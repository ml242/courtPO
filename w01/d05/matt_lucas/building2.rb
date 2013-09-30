class Building
  attr_accessor :name, :apartments
  # def apartments
  #   @apartments
  # end
  # def apartments=(apt)
  #   @apartments = apt
  # end
  def initialize
    @apartments = []
  end
end