# TO DO
#prompt user for input
  #select line (give 6 , N, L as prompts)
    #use line selection to prompt for
#get input
  #check & correct input

#translate stops to items in the hash/array

#identify stop position in the array(s)

#get position as a number that can be manipulated

#calculate difference between stops
  #for ANYTHING CHANGING LINES:
      #if start line != end line
        #add union sq.  & calculate distance twice

#take absolute value of difference

#puts result


#VARIABLES  ------------------------------------------

subway_lines = {
  :"L" =>["8th_L", "6th_L", "Union Square_L", "3rd_L", "1st_L"],
  :"N" =>["Times Square_N", "34th_N", "28th_N", "23rd_N", "Union Square_N", "8th_n"],
  :"6" =>["Grand Central_6", "33rd_6", "28th_6", "23rd_6", "Union Square_6", "Astor Place_6"]
}

subway_line_array = [
  "L", "N", "6"
]

start_line = ""
start_station = ""

end_line = ""
end_station = ""

@station_position = {}


#I didn't end up using these... they may come in handy if I understand and can use &
# transfer_stations = ["Union Square_L", "Union Square_N", "Union Square_6"]
# transfer_station_positions = {"Union Square_L" => 2, "Union Square_N" => 4, "Union Square_6" => 4}

#METHODS    ------------------------------------------
def ask(question)
  puts(question)
  answer = gets.chomp!
end


def list_options(list_values, station_start = nil)
  return list_values if station_start == nil
  return list_values[station_start] if station_start != nil
end


def travel_distance(line_begin, station_begin, line_end, station_end)
  difference = @station_position[line_end.to_sym][station_end] - @station_position[line_begin.to_sym][station_begin]
  number_of_stations = difference.abs
end



#PROGRAM    ------------------------------------------



puts ""
puts "Welcome to NYC!"

#THE FOUR BLOCKS OF CODE BELOW HERE CAN BE REFACTORED INTO A METHOD, I started this with list options but will need to finish it later

#This block of code gets user input for the line they will start with
until subway_line_array.include?(start_line)
puts ""
puts list_options(subway_line_array)
line_start = ask("What subway line will you take when you start your journey? Please select a line from the list above:")
start_line = line_start.upcase
  if subway_line_array.include?(start_line) == false
    puts "That is not a subway line.\n"
  end
end

#This block of code gets user input for the station where they will start their journey
until subway_lines[start_line.to_sym].include?(start_station)
puts ""
puts subway_lines[start_line.to_sym]
start_station = ask("At what station will you start your journey? Please select a station from the list above:")
# will use this line if I control for letter case of user's string entry      start_line = line_start
puts "That is not a station on this line.\n" if subway_lines[start_line.to_sym].include?(start_station) == false
end

#This block of code gets user input for the line they will end with
puts ""
until subway_line_array.include?(end_line)
puts ""
puts list_options(subway_line_array)
line_end = ask("What is the subway line at your destination station? Please select a line from the list above:")
end_line = line_end.upcase
  if subway_line_array.include?(end_line) == false
    puts "That is not a subway line.\n"
  end
end

#This block of code gets user input for the station where they will end their journey
until subway_lines[end_line.to_sym].include?(end_station)
puts ""
puts subway_lines[end_line.to_sym]
end_station = ask("At what station will you end your journey? Please select a station from the list above:")
# will use this line if I control for letter case of user's string entry      end_line = line_end
puts "That is not a station on this line.\n" if subway_lines[end_line.to_sym].include?(end_station) == false
end


#this creates a hash and assigns a position on the array to each station in the original subway line hash that holds staions in an array
subway_lines.keys.each do |line|
  @station_position[line] = Hash[subway_lines[line].map.with_index.to_a]
end


# #this calculates the simple distance between two stations on the same line and puts it to the console
# trip_stops = travel_distance(start_line, start_station, end_line, end_station)
#   puts "Your trip is #{trip_stops} stops."


#THIS CODE CONCEPTUALLY WORKS OUT HOW I WOULD APPROACH CALCULATING DISTANCE BETWEEN 2 STATIONS ON DIFFERENT LINES
if start_line == end_line
  trip_stops = travel_distance(start_line, start_station, end_line, end_station)
  puts "Your trip is #{trip_stops} stops."
else
  section_1 = travel_distance(start_line, start_station, start_line, "Union Square_" + start_line)
  section_2 = travel_distance(end_line, "Union Square_" + end_line, end_line, end_station)
  total_stops = section_1.abs + section_2.abs
  puts total_stops
end



#THIS CODE WORRIED ABOUT DIRECTIONALITY OF TRAVEL AND WE DON'T ACTUALLY NEED TO CARE ABOUT THAT
  # if @station_position[start_line.to_sym][start_station] < @station_position[start_line.to_sym]["Union Square_" + start_line]
  #   #first array stays in ascending order
  # else
  #   #first_array.reverse
  # end
  # if @station_position[end_line.to_sym][end_station] < @station_position[end_line.to_sym]["Union Square_" + end_line]
  #   #second array stays in ascending order
  # else
  #   #second_array.reverse
  # end

#build arrays from start to Union Square and from Union square to end using correct directionality
#get distance -1 (so don't double count union square)



#  new_array = subway_lines[end_line.to_sym] + subway_lines[start_line.to_sym]
# also use .reverse if necessary to get right orientation




