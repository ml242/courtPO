module LastN
  def last(n)
    self[-n,n]
  end
end
# Defines
class String
  include LastN
end


subway_lines = {
n_line: ["Times Square-N", "34th-N", "28th-N", "23rd-N", "Union Square", "8th-N"],
l_line: ["8th-L", "6th-L", "Union Square", "3rd-L", "1st-L"],
six_line: ["Grand Central-6", "33rd-6", "28th-6", "23rd-6", "Union Square", "Astor Place-6"]}

puts "Please enter the stop you are getting on like this: 'Times Square-N' or 'Astor Place-6'"
puts "Punctuation and spacing are important!"
gets_on = gets.chomp!
puts "Please enter the stop you are getting off:"
gets_off = gets.chomp!

gets_on_subway = gets_on.last(2)

case gets_on_subway
  when "-N"
    first_line  = :n_line
  when "-L"
    first_line = :l_line
  when "-6"
    first_line = :six_line
  when "re"
    first_line = "Union Square"
  else
    puts "I don't think you typed the first stop right."
end

gets_off_subway = gets_off.last(2)

case gets_off_subway
  when "-N"
    last_line  = :n_line
  when "-L"
    last_line = :l_line
  when "-6"
    last_line = :six_line
  when "re"
    last_line = "Union Square"
  else
    puts "I don't think you typed the first stop right."
end

if last_line == "Union Square"
  first_stop_index = subway_lines[first_line].index(gets_on)
  union_sq_index = subway_lines[first_line].index("Union Square")

  if first_stop_index < union_sq_index
    first_trip = subway_lines[first_line][first_stop_index..union_sq_index].to_a
  else
    first_trip = subway_lines[first_line][union_sq_index..first_stop_index].to_a
  end

  puts "Your trip length is #{first_trip.length}"

elsif first_line == "Union Square"

  last_stop_index = subway_lines[last_line].index(gets_off)
  union_sq_index2 = subway_lines[last_line].index("Union Square")

  if last_stop_index < union_sq_index2
    second_trip = subway_lines[last_line][last_stop_index..union_sq_index2].to_a
  else
    second_trip = subway_lines[last_line][union_sq_index2..last_stop_index].to_a
  end

  puts "Your trip length is #{second_trip.length}"

else

    first_stop_index = subway_lines[first_line].index(gets_on)
  union_sq_index = subway_lines[first_line].index("Union Square")

  if first_stop_index < union_sq_index
    first_trip = subway_lines[first_line][first_stop_index..union_sq_index].to_a
  else
    first_trip = subway_lines[first_line][union_sq_index..first_stop_index].to_a
  end

  last_stop_index = subway_lines[last_line].index(gets_off)
  union_sq_index2 = subway_lines[last_line].index("Union Square")

  if last_stop_index < union_sq_index2
    second_trip = subway_lines[last_line][last_stop_index..union_sq_index2].to_a
  else
    second_trip = subway_lines[last_line][union_sq_index2..last_stop_index].to_a
  end


  total_trip = first_trip + second_trip
  trip_length = total_trip.length - 1


  puts "Your trip length is #{trip_length}"

end
