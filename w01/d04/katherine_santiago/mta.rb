SUBWAY = {
  :l_train => ["union square", "l-8th", "l-6th", "l-3rd" "l-1st"],
  :n_train=> ["times square", "n-34th", "n-28th", "n-23rd", "union square", "n-8th"],
  :six_train => ["grand central", "6-33rd", "6-28th", "union square", "astor place"]
}

# l = SUBWAY.keys[0]
# n = SUBWAY.keys[1]
# six = SUBWAY.keys[2]

# SUBWAY.keys[0] if on_train == "l"
# SUBWAY.keys[1] if on_train =="n"
# SUBWAY.keys[2] if on_train == "six"

def ask(string)
  puts string
  gets.chomp!
end

# find out boarding line/stop and departing line/stop
on_train = ask("Which line do you get on? N/L/6").downcase
on_stop = ask("Which stop do you get on the subway?").downcase
off_train = ask("On which line do you exit? N/L/6").downcase
off_stop = ask("Which stop do you exit?").downcase

puts "You get on at: #{on_train}, #{on_stop}"
puts "You exit at: #{off_train}, #{off_stop}"

# how many stops when on the same line
if (on_train == "l") && (off_train =="l")
  on_stop_num = SUBWAY[:l_train].index(on_stop)
  off_stop_num = SUBWAY[:l_train].index(off_stop)
  total_stops = on_stop_num - off_stop_num
  puts "You're going to make #{total_stops.abs} stops."
elsif (on_train == "n") && (on_train == "n")
  on_stop_num = SUBWAY[:n_train].index(on_stop)
  off_stop_num = SUBWAY[:n_train].index(off_stop)
  total_stops = on_stop_num - off_stop_num
  puts "You're going to make #{total_stops.abs} stops."
else
  on_stop_num = SUBWAY[:six_train].index(on_stop)
  off_stop_num = SUBWAY[:six_train].index(off_stop)
  total_stops = on_stop_num - off_stop_num
  puts "You're going to make #{total_stops.abs} stops."
end

if (on_train == "l") && (off_train == "n")
  on_stop_num = SUBWAY[:l_train].index(on_stop)
  union_square_num = SUBWAY[:l_train].index("union square")
  off_stop_num = SUBWAY[:n_train].index(off_stop)
  line1_num_stops = (on_stop_num - union_square_num)
  line2_num_stops = (union_square_num - off_stop_num)
  puts "You're going to make #{line1_num_stops.abs} plus #{line2_num_stops.abs} stops."
end

# if on_train == off_train
#   SUBWAY[]


# on_num = on_train.index(on_stop)
# off_num = off_train.index(on_stop)
# total_stops = on_num - off_num
# puts "Total stops: #{total_stops.abs}"

