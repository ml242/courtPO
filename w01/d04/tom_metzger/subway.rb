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
  :"L" =>["8th_l", "6th_l", "Union Square_l", "3rd_l", "1st_l"],
  :"N" =>["Times Square_n", "34th_n", "28th_n", "23rd_n", "Union Square_n", "8th_n"],
  :"6" =>["Grand Central_6", "33rd_6", "28th_6", "23rd_6", "Union Square_6", "Astor Place_6"]
}

subway_line_array = [
  "L", "N", "6"
]

@start_line = "6"
@start_station = "33rd_6"
@end_line = "6"
@end_station = "Astor Place_6"

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

def distance()

end



#PROGRAM    ------------------------------------------

subway_lines.keys.each do |line|
  @station_position[line] = Hash[subway_lines[line].map.with_index.to_a]
end


puts ""
puts "Welcome to Conductor!"
puts ""
puts list_options(subway_line_array)
line_start = ask("What subway line will you take when you start your journey? Please select a line from the list above:")

# THIS LINE IS BROKEN  puts list_options(subway_lines.keys, line_start)
# line_start = line_start.upcase.to_sym
# station_start = ask("At which station will you board the subway? Stations on the #{line_start} are listed above")


# puts list_options(subway_line_array)
# line_end = station_input("end", "What subway line at the station where you #{start_end} your journey? Please select a line from the list above:")

# puts list_options(subway_lines, line_end)
# line_end = line_end.upcase.to_sym
# station_end = ask("At which station will you get off the subway? Stations on the #{line_end} are listed above")





