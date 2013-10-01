#Building 1

floor_1 => { AptA => 3, Apt B => 2}
tenants = {:floor_1 => [AptA = 3, AptB = 2, Apt_C = 0]}
Apt_A = tenants[:floor_1][0].to_i
Apt_B = tenants[:floor_1][1].to_i
Apt_C = tenants[:floor_1][2].to_i
Apt_Array = []
Apt_Array << Apt_A
Apt_Array << Apt_B
Apt_Array << Apt_C


def sum (Apt_A, Apt_B + Apt_C)
  sum = Apt_A + Apt_B + Apt_C
  return sum
end

def empty_rooms
  #check in rooms to see if zero. If not zero add 1 to filled_rooms
    empty_rooms = 0
    Apt_Array.each do |x|
      if x == 0
        empty_rooms = empty_rooms +1
        return empty_rooms
    end
  end
end



def filled_rooms
  #check in rooms to see if zero. If zero the room is empty. Add 1 to empty_rooms
  filled_rooms = Apt_Array.size - empty_rooms
end

sum = Apt_A + Apt_B + Apt_C