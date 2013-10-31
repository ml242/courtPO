def ask(question)
  puts(question)
  answer = gets.chomp
end

TRAIN_LINES = {
  "n" => "Times Square, 34th, 28th, 23rd, Union Square, 8th".split(", "),
  "l" => "8th, 6th, Union Square, 3rd, 1st".split(", "),
  "6" => "Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place".split(", ")
}

def calc_stops_to_union_square(line, station)
  stations = TRAIN_LINES[line]
  start_index = stations.find_index(station)
  end_index = stations.find_index("Union Square")
  delta = end_index - start_index
  return delta.abs
end

start_line = ask("What line are you getting on at?")
start_station = ask("At which station?")

end_line = ask("What line are you getting off at?")
end_station = ask("At which station?")

if start_line == end_line
  stations = TRAIN_LINES[start_line]
  start_index = stations.find_index(start_station)
  end_index = stations.find_index(end_station)
  delta = end_index - start_index
else
  d1 = calc_stops_to_union_square(start_line, start_station)
  d2 = calc_stops_to_union_square(end_line, end_station)
  delta = d1 + d2
end

delta = delta.abs
puts "It takes #{delta} stops to get from #{start_station} on the #{start_line} to #{end_station} on the #{end_line} "