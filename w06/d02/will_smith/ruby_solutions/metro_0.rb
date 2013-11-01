# start_line
# start_station

# stop_line
# stop_station

def ask(question)
  puts(question)
  answer = gets.chomp
end

TRAIN_LINES = {
  n: "Times Square, 34th, 28th, 23rd, Union Square, 8th".split(", "),
  l: "8th, 6th, Union Square, 3rd, 1st".split(", ")
  s: "Grand Central, 33rd, 28th, 23rd, Union Square, Astor Place".split(", ")
}


# If it is the same line, you can just look on that line
  # Simple solution

# If it is not the same line, you have to figure out the intersection of where they hit
  # and you will need to transfer lines at union square