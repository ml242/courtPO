class Staper

  attr_accessor :color

  def self.set_color(input_color)
    @default_color = input_color
  end

  def self.get_color()
    @default_color
  end

  def initialize(color=Stapler.get_color)
    @color = color
  end

end
