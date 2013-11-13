
# Hints:

# Get the program to work for a single line before trying to tackle multiple lines.
# The key to the lab is the intersection of the lines at Union Square. Google "ruby array intersect."

require 'pry'
require 'pry-remote'
require 'pry-nav'

def ask(string)
  puts string
  gets.chomp!
end

n_train_stops = [
  "42st",
  "34st",
  "28st_n",
  "23st_n",
  "Union Square_n",
  "8st_n"
]

l_train_stops = [
  "8ave",
  "6ave",
  "Union Square_l",
  "3ave",
  "1ave"
   ]

six_train_stops = [
  "Grand Central",
  "33st",
  "28st_s",
  "23st_s",
  "Union Square_six",
  "Astor Place"
]

subway_lines_and_stops = {
  :n_train_stops => n_train_stops,
  :l_train_stops => l_train_stops,
  :six_train_stops => six_train_stops
}

#binding.pry

n_stops = subway_lines_and_stops[:n_train_stops]
l_stops = subway_lines_and_stops[:l_train_stops]
six_stops = subway_lines_and_stops[:six_train_stops]

# p n_train_stops.index("Union Square_n").is_a? Integer

  def station_count(train, stop1, stop2)
    stop_index1 = train.index(stop1)
    stop_index2 = train.index(stop2)
    difference = stop_index1-stop_index2
    difference.abs
  end

origin_train_ask=ask("What train are you getting on?")
  case origin_train_ask
  when "n_stops"
    origin_train = n_stops
  when "l_stops"
    origin_train = l_stops
  when "six_stops"
    origin_train = six_stops
  else
    puts "ERROR. Invalid input. Try typing good, ya idiot."
  end

origin_stop=ask("At which stop?")
destination=ask("What stop are you getting off at?")

test1 = station_count(origin_train, origin_stop, destination)
puts "Great, you should get off in #{test1} stops."