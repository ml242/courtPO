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
  :"N" =>["Times Square_n", "34th_n", "28th_n", "23rd_n", "Union Square_n", "8th_n"],
  :"6" =>["Grand Central_6", "33rd_6", "28th_6", "23rd_6", "Union Square_6", "Astor Place_6"]
}

subway_line_array = [
  "L", "N", "6"
]

start_line = ""
end_line = ""

@station_position = {}

#METHODS    ------------------------------------------
def ask(question)
  puts(question)
  answer = gets.downcase.chomp!
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

subway_lines.keys.each do |line|
  @station_position[line] = Hash[subway_lines[line].map.with_index.to_a]
end

puts ""
puts "Welcome to Conductor!"
puts ""

until subway_line_array.include?(start_line)
puts list_options(subway_line_array)
line_start = ask("What subway line will you take when you start your journey? Please select a line from the list above:")
start_line = line_start.upcase
  if subway_line_array.include?(start_line) == false
    puts "That is not a subway line."
  end
end

# THIS CODE EITHER DIES NOT WORK OR NEEDS TO BE CHECKED
  # THIS LINE IS BROKEN  puts list_options(subway_lines.keys, line_start)
  # line_start = line_start.upcase.to_sym
  # station_start = ask("At which station will you board the subway? Stations on the #{line_start} are listed above")

puts ""
until subway_line_array.include?(end_line)
puts list_options(subway_line_array)
line_end = ask("What is the subway line at your destination station? Please select a line from the list above:")
end_line = line_end.upcase
  if subway_line_array.include?(end_line) == false
    puts "That is not a subway line."
  end
end

  # puts list_options(subway_lines, line_end)
  # line_end = line_end.upcase.to_sym
  # station_end = ask("At which station will you get off the subway? Stations on the #{line_end} are listed above")


start_station = "6th_L"
end_station = "Union Square_L"


trip_stops = travel_distance(start_line, start_station, end_line, end_station)

puts "Your trip is #{trip_stops} stops."





