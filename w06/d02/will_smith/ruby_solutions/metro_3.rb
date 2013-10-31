def ask(question)
  puts(question)
  answer = gets.chomp
end

TRAIN_LINES = {
  "n" => "Times Square, 34th, 28th, 23rd, Union Square, 8th".split(", "),
  "l" => "8th, 6th, Union Square, 3rd, 1st".split(", "),
  "6" => "Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place".split(", ")
}

UNION_SQUARE = "Union Square"

def calc_distance_on_line(line, start_station, end_station)
  stations = TRAIN_LINES[line]
  start_index = stations.find_index(start_station)
  end_index = stations.find_index(end_station)
  delta = end_index - start_index
  return delta.abs
end

start_line = ask("What line are you getting on at?")
start_station = ask("At which station?")

end_line = ask("What line are you getting off at?")
end_station = ask("At which station?")

if start_line == end_line
  calc_distance_on_line(start_line, start_station, end_station)
else
  stops_before_transfer = calc_distance_on_line(start_line, start_station, UNION_SQUARE)
  stops_after_transfer = calc_distance_on_line(end_line, UNION_SQUARE, end_station)
  delta = stops_before_transfer + stops_after_transfer
end

puts "It takes #{delta} stops to get from #{start_station} on the #{start_line} to #{end_station} on the #{end_line} "