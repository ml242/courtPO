
puts "
N Line : 8th Street, Union Square, 23rd Street, 28th Street, 34th Street, Times Square
L Line: 1st Ave, 3rd Ave, Union Square, 6th Ave, 8th Ave
6 Line: Astor Place, Union Square, 28th Street, 33rd Street, Grand Central
"

Line_N = ["8th street_N", "union square", "23rd street_N", "28th street_N", "34th street_N", "times square_N"]
Line_L = ["1st ave_L", "3rd ave_L", "union square", "6th ave_L", "8th ave_L"]
Line_6 =["astor place_6", "union square", "28th street_6", "33rd street_6","grand central_6"]

def ask(question)
  puts(question)
  gets.chomp
end

def line_locator(line)
  "Line" + "_" + line
end

def stop_locator(stop, line)
  if stop != "union square"
    stop = stop + "_" + line
  else
    stop
  end
end

def line_hash(line)
  line.slice! "Line"
  line
  line.to_sym
end

def intersection_locator(first_array, second_array)
  intersection = first_array & second_array
  intersection.join
end

#First you need to know what line you are starting from
first_line = ask("What is the name of the train line you starting from?").upcase
first_line_id = line_locator(first_line)
first_line_hash = line_hash(first_line_id)

# Ask what stop you are starting from
first_stop = ask("Please enter starting station name").downcase
first_stop_id = stop_locator(first_stop, first_line)

#Repeat for destination stop
last_line = ask("What is the name of the train line for your destination?").upcase
last_line_id = line_locator(last_line)
last_line_hash = line_hash(last_line_id)

last_stop = ask("Please enter destination station name").downcase
last_stop_id = stop_locator(last_stop, last_line)

#Make hash of the train lines
map = Hash.new
map = {:_N => Line_N, :_L => Line_L, :_6 => Line_6}
# print map

# figure out how many steps between first_stop and last stop
if first_line_hash == last_line_hash
  single_line = map[first_line_hash].find_index(last_stop_id) - map[first_line_hash].find_index(first_stop_id)
#absolute value in case you go backwards
  single_line = single_line.abs
  puts "#{single_line} more stops until your destination."
else
  #find where the lines intersect
  intersection = intersection_locator(map[first_line_hash],map[last_line_hash])
  #find out how many stops from origin until intersection
  first_multiple_line = map[first_line_hash].find_index(intersection) - map[first_line_hash].find_index(first_stop_id)
  #find out how many stops from intersection until destination
  second_multiple_line = map[last_line_hash].find_index(last_stop_id) - map[last_line_hash].find_index(intersection)
  #absolute values until you go backwards sum up stops
  total_line = first_multiple_line.abs + second_multiple_line.abs
  puts "#{total_line} more stops until your destination"
end

