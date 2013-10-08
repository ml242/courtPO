class Car
  attr_accessor :color, :driver
  def initialize
  @passengers  = []
  end

  def honk
    "beep"
  end
end