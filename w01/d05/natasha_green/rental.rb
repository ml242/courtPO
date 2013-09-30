

class Building1
  def initialize (floors, apts, renters)
  #  @address = address
   # @has_doornan = false #this will be the default attribute
  #  @has_walkup = false #this will be the default attribute
      @num_floors = {:floor1 => ["AptA","AptB"], :floor2 => ["AptC", "AptD"]}
     @apartments = apt
     @count_renters = renters
end

def set_floors(floors)
   @num_floors
end

def get_floors
  puts " The number of floors is #{@num_floors}"
end


end

def set_apartments(apts)
   @apartments
end

def get_apartments
  puts " The number of apartments is #{@apartments}"
end

def set_renters(renters)
   @renters
end

def get_renters
  puts " The number of floors is #{@floors}"
end

end

b1 = Building.new(2,5,10)


=begin
  def count_renters(input_renters,new_renters)
# count amount of renters in building
    existing_amount_of_renters = @count_renters[input_renters]

    new_amount_of_renters = exisiting_amount_of_renters + new_renters
    @count_renters[input_renters] = new_amount_of_renters
  end

  def count_apartments_availabe(input_apt_available, input_apt_occupied)
#count amount of apartments availabe
    apt_available = input_apt_available - input_apt_occupied

  end
end
=end




=begin
# Building 1 has 2 floors
Floor 1 has Apt_A = 3 people, Apt_B = empty, Apt_C = 2 people Apt_D = empty
Floor 2 has Apt_E = 2 people, Apt_F = 5 people, Apt_G = empty

#Building 2 has 4 floors with 5 apartments a
Floor 1 has Apt_A = empty , Apt_B = empty, Apt_C = 2 people Apt_D = empty
Floor 2 has Apt_E = empty  Apt_F = 5 people, Apt_G = empty
Floor 3  has Apt_H = 2 people, Apt_F = I people,

to see input of floors you have to do
puts b1.get_floors


=end