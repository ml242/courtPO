require 'rainbow'

module LastN
  def last(n)
    self[-n,n]
  end
end
# Defines a module that calls certain range on object.

class String
  include LastN
end
# Includes module on strings.


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
# Isolates final two characters of strings.

case gets_on_subway
  when "-N"
    first_line  = :n_line
  when "-L"
    first_line = :l_line
  when "-6"
    first_line = :six_line
  when "re" && gets_on = "Union Square"
    first_line = "Union Square"
  else
    puts "I don't think you typed the first stop right."
end
# Separates input by line.

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

if first_line == last_line
  trip_length = subway_lines[first_line].index(gets_on) - subway_lines[first_line].index(gets_off)
# Uses difference of index numbers to calculate trip length.

  trip_length = trip_length.abs
# Accounts for possible negatives.

  puts "Your trip length is #{trip_length}."

else
  first_trip = subway_lines[first_line].index(gets_on) - subway_lines[first_line].index("Union Square")
  first_trip = first_trip.abs
  second_trip = subway_lines[last_line].index("Union Square") - subway_lines[last_line].index(gets_off)
  second_trip = second_trip.abs
  second_trip = second_trip + 1
# Addition accounts for the Union Square stop.

  trip_length = first_trip + second_trip

  puts "Your trip length is #{trip_length}."
end



