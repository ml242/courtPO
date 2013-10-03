require 'pry'
require 'pry-nav'
require 'rainbow'

# Display welcome screen and user interface
def transit_menu()
  puts "\e[H\e[2J"
  print "                             "
  print "ChopStop".underline.foreground(:green)
  print ":".foreground(:green)
  print " Local Subway Directions\n\n".foreground(:blue)
  print "                                 "
  print "Where do want to go today?\n\n".foreground(:yellow)
end

# Ask user for line and return input
def line_menu(line)
  puts line.keys
  print "\n > "
end

# Ask user for station and return input
def station_menu(line, station)
  puts station[line]
  print "\n > "
end

def get_answer
  ans = gets.chomp
end
# Count number of stops between stations
def count_stops(start_line, start_station,
  stop_line, stop_station, transit_menu)
  if start_line == stop_line
    start_index = transit_menu[start_line].index(start_station)
    stop_index = transit_menu[stop_line].index(stop_station)
    num_stops = (stop_index - start_index).abs
  else
    start_index = transit_menu[start_line].index(start_station)
    usq_start_line_index = transit_menu[start_line].index("Union Sq")
    first_leg_stops = usq_start_line_index - start_index
    first_leg_stops = first_leg_stops.abs
    stop_index = transit_menu[stop_line].index(stop_station)
    usq_stop_line_index = transit_menu[stop_line].index("Union Sq")
    last_leg_stops = usq_stop_line_index - stop_index
    last_leg_stops = last_leg_stops.abs
    num_stops = first_leg_stops + last_leg_stops
    puts "Board train at #{start_station}."
    puts "Travel #{first_leg_stops} stops and get off at Union Square."
    puts "Get on the #{stop_line} train and go #{last_leg_stops} more stops"
    puts "until you reach your destination at #{stop_station}"
    puts "Approximate travel time is #{5*num_stops} minutes and #{num_stops} stops."
    `afplay 'stand.mp3'`
  end
end

# 3 Lines -
sub_system = {
  "6" =>
    ["Grand Central", "33rd St", "28th St-s", "23rd St-s", "Union Sq", "Astor Pl"],
  "N" =>
    ["Times Sq", "34th St", "28th St-n", "23rd St-n", "Union Sq", "8th St"],
  "L" =>
    ["8th Ave", "6th Ave", "Union Sq", "3rd Ave", "1st Ave"]
}

intersection = "Union Sq"

# Menu
transit_menu

# Get User Starting and Stopping Points
puts "ENTER START LINE\n".underline
line_menu(sub_system)
start_line = get_answer
puts "\nSTART STATION\n".underline
station_menu(start_line, sub_system)
start_station = get_answer
puts "\nENTER STOP LINE\n".underline
line_menu(sub_system)
stop_line = get_answer
puts "\nSTOP STATION\n".underline
station_menu(stop_line, sub_system)
stop_station = get_answer

# Count stops (Hash[array.map.with_index.to_a])
num_stops = count_stops(start_line, start_station,
  stop_line, stop_station, sub_system)
