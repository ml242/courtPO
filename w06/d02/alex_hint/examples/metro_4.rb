require 'pry'

def clear
  system("clear")
end

def ask(question)
  puts(question)
  answer = gets.chomp
end

LINES = %w{n l 6}

TRAIN_HASH = {
  "n" => "Times Square, 34th, 28th, 23rd, Union Square, 8th".split(", "),
  "l" => "8th, 6th, Union Square, 3rd, 1st".split(", "),
  "6" => "Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place".split(", ")
}

UNION_SQUARE = "Union Square"

def calc_distance_on_line(line, start_station, end_station)
  stations = TRAIN_HASH[line]
  start_index = stations.find_index(start_station)
  end_index = stations.find_index(end_station)
  delta = end_index - start_index
  return delta.abs
end

def print_array_index_and_values(array)
  i = 0
  for el in array
    puts "#{i}: #{el}"
    i += 1
  end
  puts "\n\n"
end

def get_value_from_array(question, array)
  puts question
  print_array_index_and_values(array)
  answer = gets.chomp.to_i
end

clear

start_line = get_value_from_array("What line are you getting on at?", LINES)
start_station = get_value_from_array("At which station?", TRAIN_HASH[start_line])

end_line = get_value_from_array("What line are you getting off at?", LINES)
end_station = get_value_from_array("At which station?", TRAIN_HASH[end_line])

if start_line == end_line
  calc_distance_on_line(start_line, start_station, end_station)
else
  stops_before_transfer = calc_distance_on_line(start_line, start_station, UNION_SQUARE)
  stops_after_transfer = calc_distance_on_line(end_line, UNION_SQUARE, end_station)
  delta = stops_before_transfer + stops_after_transfer
end

puts "It takes #{delta} stops to get from #{start_station} on the #{start_line} to #{end_station} on the #{end_line} "