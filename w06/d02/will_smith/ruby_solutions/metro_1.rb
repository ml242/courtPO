# start_line
# start_station

# end_line
# end_station

def ask(question)
  puts(question)
  answer = gets.chomp
end

TRAIN_LINES = {
  "n" => "Times Square, 34th, 28th, 23rd, Union Square, 8th".split(", "),
  "l" => "8th, 6th, Union Square, 3rd, 1st".split(", "),
  "6" => "Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place".split(", ")
}

start_line = ask("What line are you getting on at?")
start_station = ask("At which station?")

end_line = ask("What line are you getting off at?")
end_station = ask("At which station?")

# If it is the same line, you can just look on that line
if start_line == end_line
  stations = TRAIN_LINES[start_line]
  start_index = stations.find_index(start_station)
  end_index = stations.find_index(end_station)
  delta = end_index - start_index
else
  puts "not implemented yet"
end


# If it is not the same line, you have to figure out the intersection of where they hit
  # and you will need to transfer lines at union square
delta = delta.abs
puts "It takes #{delta} stops to get from #{start_station} on the #{start_line} to #{end_station} on the #{end_line} "