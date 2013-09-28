class Building
attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
  def initialize(address, style, num_floors, has_doorman, is_walkup)
    @address = address
    @style = style
    @num_floors = num_floors
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @apartments = []
  end
  def doorman_to_s
    if @has_doorman
      @doorman = "has a doorman"
    else
      @doorman = "does not have a doorman"
    end
  end
  def walkup_to_s
    if @is_walkup
      @walkup = "is a walkup"
    else
      @walkup = "is not a walkup"
    end
  end
  def to_s
    "This building is at #{@address},
    is #{@style} style, #{@walkup} #{@doorman}
    and has #{@num_floors} floors."
  end
  def count_renters
    counter = 0
    @apartments.each do |i|
      @apartments[i].renters
      counter += 1
    end
    return counter
  end
  def count_apartments_available
    counter = 0
    @apartments.each do |i|
      if @apartments[i].renters.length == 0
        counter += 1
      end
    end
  end
  def apt_include(*apartment)
    apartment.each do |apt|
      @apartments << apt
    end
  end
end