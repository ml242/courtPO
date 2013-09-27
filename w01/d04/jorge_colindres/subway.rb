require 'rainbow'

def ask(question)
  puts question
  gets.chomp
end

def calculate_distance(subway_system, selected_start_line, selected_end_line)
  # Ask user where they'r going
  selected_start_line = subway_system[selected_start_line]
  selected_end_line = subway_system[selected_end_line]
  # ask("Where are you starting?")
  selected_start_line.each do |stop|
    puts "- #{stop}"
  end
  selected_start_stop = ask("Choose your start stop:".foreground(:cyan))

  selected_end_line.each do |stop|
    puts "- #{stop}"
  end
  selected_end_stop = ask("Choose your end stop:".foreground(:red))

  unless selected_start_line == selected_end_line
    nexus = (selected_start_line & selected_end_line)

    selected_start_line_hash = Hash[selected_start_line.map.with_index.to_a]
    selected_end_line_hash = Hash[selected_end_line.map.with_index.to_a]

    start_station_num = selected_start_line_hash[selected_start_stop]
    end_station_num = selected_end_line_hash[selected_end_stop]

    nexus_num = selected_start_line_hash['Union Square']

    distance_into_nexus = (nexus_num - start_station_num).abs

    nexus_num = selected_end_line_hash['Union Square']

    distance_out_of_nexus = (nexus_num - end_station_num).abs

    total_distance = distance_into_nexus + distance_out_of_nexus
  else
    selected_start_line_hash = Hash[selected_start_line.map.with_index.to_a]

    start_station_num = selected_start_line_hash[selected_start_stop]
    end_station_num = selected_start_line_hash[selected_end_stop]

    total_distance = (start_station_num - end_station_num).abs
  end
  puts "You have to travel #{total_distance} stops.".foreground(:magenta)
end

SUBWAY_SYSTEM = {
  :n_line => [
    "Times Square",
    "34",
    "28-N",
    "23-N",
    "Union Square",
    "8-N"
  ],
  :l_line => [
    "8-L",
    "6",
    "Union Square",
    "3",
    "1"
  ],
  :six_line => [
    "Grand Central",
    "33",
    "28-6",
    "23-6",
    "Union Square",
    "Astor Place"
  ]
}
CHOOSE_LINES_PROMPT = "WELCOME TO THE SUBWAY SYSTEM!
What line do you want to start at?
  > Enter 1 for the N Line
  > Enter 2 for the L Line
  > Enter 3 for the 6 Line
  > Enter Q to leave the Subway"

system_check = false
while system_check == false
  selected_start_line = ask(CHOOSE_LINES_PROMPT)
  if selected_start_line == "1"
   puts "\nYou're starting on the N Line\n".color("#f0dd0c")
   selected_end_line = ask("What line do you want to end on?
      > Enter 1 for the L Line
      > Enter 2 for the 6 Line")
   if selected_end_line == "1"
    calculate_distance(SUBWAY_SYSTEM, :n_line, :l_line)
    else
      calculate_distance(SUBWAY_SYSTEM, :n_line, :six_line)
    end
    system_check = true
  elsif selected_start_line == "2"
    puts "\nYou're starting on the L Line\n".color("#999999")
    selected_end_line = ask("What line do you want to end on?
      > Enter 1 for the N Line
      > Enter 2 for the 6 Line")
   if selected_end_line == "1"
    calculate_distance(SUBWAY_SYSTEM, :l_line, :n_line)
    else
      calculate_distance(SUBWAY_SYSTEM, :l_line, :six_line)
    end
    system_check = true
  elsif selected_start_line == "3"
    puts "\nYou're starting on the 6 Line\n".color("#009a2c")
    selected_end_line = ask("What line do you want to end on?
      > Enter 1 for the N Line
      > Enter 2 for the L Line")
   if selected_end_line == "1"
    calculate_distance(SUBWAY_SYSTEM, :six_line, :n_line)
    else
      calculate_distance(SUBWAY_SYSTEM, :six_line, :l_line)
    end
    system_check = true
  elsif selected_start_line.upcase == "Q"
    puts "Good Bye!"
    system_check = true
  else
    puts "\nError. Select only one of the lines within the Subway System\n".foreground(:red)
  end
end

