class Building
attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
  def initialize
  end
  def to_s
    "This building is at #{:address},
    is #{:style} style,
    and has #{:num_floors}"
  end
end