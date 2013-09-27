require 'pry'

# There are 3 subway lines:
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.

#Need to make 3 arrays with train stop info
#with all the unique values, BUT the union square stop


# All 3 subway lines intersect at Union Square, but there are NO other intersection points.

#union square stop is not unique, need to be able to put it in all the arrays


# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.

# For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays. (example: "28th-s" for 6 line and "28th-n" for n line)


#ask method to minize the code
def ask(string)
  puts string
  gets.chomp!
end

#arrays to hold the info
n_line_array = ['times square', '34th', '28th', '23rd', 'union square', '8th',]
l_line_array = ['8th', '6th', 'union square', '3rd', '1st']
six_line_array = ['grand central', '33rd', '28th', '23rd', 'union square', 'astor place']

def check_station_same(line_geton_input, stop_geton_input, stop_getoff_input, n_line_array, l_line_array, six_line_array)
  if line_geton_input == 'n'
    # make a check for n_line
    on = n_line_array.index(stop_geton_input)
    off = n_line_array.index(stop_getoff_input)
    return (off - on).abs
  elsif line_geton_input == 'l'
    # make a check for l_line
    on = l_line_array.index(stop_geton_input)
    off = l_line_array.index(stop_getoff_input)
    return (off - on).abs
  else
    # make a check for six_line
    on = six_line_array.index(stop_geton_input)
    off = six_line_array.index(stop_getoff_input)
    return (off - on).abs
  end
end

def check_station_different(line_geton_input, stop_geton_input, line_getoff_input, stop_getoff_input, n_line_array, l_line_array, six_line_array)
  first_line = check_station_same(line_geton_input, stop_geton_input, 'union square', n_line_array, l_line_array, six_line_array)
  second_line = check_station_same(line_getoff_input, 'union square', stop_getoff_input, n_line_array, l_line_array, six_line_array)
  return first_line + second_line
end


#print out the menu
puts 'N: Times Square, 34th, 28th, 23rd, Union Square, and 8th'
puts 'L: 8th, 6th, Union Square, 3rd, and 1st'
puts 'Six: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place'

#ask for the user's input
line_geton_input = ask('What subway line are you getting on?').downcase
stop_geton_input = ask('What stop on that line are you getting on?').downcase

line_getoff_input = ask('What subway line would you like to get off at?').downcase
stop_getoff_input = ask('What stop are you getting off at on that line?').downcase
# puts line_geton_input
# puts stop_geton_input
# puts line_getoff_input
# puts stop_getoff_input

#check if the person if staying on the same line or not

# array = ['a', 'b', 'c']
# array = array[array.map.with_index.to_a]    # => {"a"=>0, "b"=>1, "c"=>2}
# array['b'] # => 1

# array = %w( a b c d e)
# # get FIRST index of element searched
# puts array.index('a')
# # get LAST index of element searched
# puts array.rindex('a')


if line_geton_input == line_getoff_input
  puts check_station_same(line_geton_input, stop_geton_input, stop_getoff_input, n_line_array, l_line_array, six_line_array)
else
  puts check_station_different(line_geton_input, stop_geton_input, line_getoff_input, stop_getoff_input, n_line_array, l_line_array, six_line_array)
end





#run a a loop that chekck each place in array for the match

















