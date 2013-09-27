require "rainbow"

def ask_puts(question)
  puts question
  gets.chomp
end

# print method because I like how this looks on the screen in some cases
def ask_print(question)
  print question + " "
  gets.chomp
end

def get_start_stop(subway_system, selected_start_line)
  # loop through each stop on the selected line and puts to screen
  selected_start_line.each do |stop|
    puts "- #{stop}"
  end
  ask_print("From above, choose your start stop:".foreground(:blue))
end

def get_end_stop(subway_system, selected_end_line)
  # loop through each stop on the selected line and puts to screen
  selected_end_line.each do |stop|
    puts "- #{stop}"
  end
  ask_print("From above, choose your end stop:".foreground(:red))
end

def calculate_distance(selected_start_line, selected_start_stop, selected_end_line, selected_end_stop)
  unless selected_start_line == selected_end_line
  # ignore below if start line and end line are the same
  # because there's no connection point

    # find the point of connection
    nexus = (selected_start_line & selected_end_line)

    # check if a connection exists between the two lines and
    # run below if so
    unless nexus.empty?
      nexus.each do |element|
        # we don't want nexus to equal an array so we do this
        nexus = element
      end

      # create hashes that set each of the stops in the start/stop line as keys with an index as values
      selected_start_line_hash = Hash[selected_start_line.map.with_index.to_a]
      selected_end_line_hash = Hash[selected_end_line.map.with_index.to_a]

      # find the indecies of our starting point and ending point
      start_station_num = selected_start_line_hash[selected_start_stop]
      end_station_num = selected_end_line_hash[selected_end_stop]

      # find the index of our connection and find the distances
      # both in and out of it
      nexus_num = selected_start_line_hash[nexus]
      distance_into_nexus = (nexus_num - start_station_num).abs

      nexus_num = selected_end_line_hash[nexus]
      distance_out_of_nexus = (nexus_num - end_station_num).abs

      total_distance = distance_into_nexus + distance_out_of_nexus
    else
      puts "Sorry, those two lines don't have a connection.".foreground(:red).bright
      total_distance = nil
    end
  else
    # create a hash that sets each of the stops in the start line as a key with an index as value
    selected_start_line_hash = Hash[selected_start_line.map.with_index.to_a]

    # find the indecies of our starting point and ending point
    start_station_num = selected_start_line_hash[selected_start_stop]
    end_station_num = selected_start_line_hash[selected_end_stop]

    # do some math on those and find the absolute value since there's no such thing as negative distance
    total_distance = (start_station_num - end_station_num).abs
  end
  unless total_distance == nil
    puts "You'll be travelling #{total_distance} stops.".foreground(:cyan).bright
  end
end

SUBWAY_SYSTEM = {
  :"N Line" => [
    "Lexington",
    "Times Square",
    "34",
    "28-N",
    "23-N",
    "Union Square",
    "8-N"
  ],
  :"L Line" => [
    "8-L",
    "6",
    "Union Square",
    "3",
    "1"
  ],
  :"Six Line" => [
    "Grand Central",
    "33",
    "28-6",
    "23-6",
    "Union Square",
    "Astor Place"
  ],
  :"F Line" => [
    "Lexington",
    "34",
    "23-F",
    "6",
    "W4",
    "Broadway-Lafayette"
  ]
}
FIRST_LINE_PROMPT = "WELCOME TO THE SUBWAY SYSTEM!
What line do you want to start at?
  > N Line
  > L Line
  > Six Line
  > F Line
  > Enter Q to leave the Subway"
SECOND_LINE_PROMPT = "What line do you want to end on?
  > N Line
  > L Line
  > Six Line
  > F Line"

first_line_check = false
second_line_check = false

# use while loops for validation
while first_line_check == false
  selected_start_line = ask_puts(FIRST_LINE_PROMPT).to_sym

  # make sure user chose one of the available subway lines
  # or chose quit, else give them a blinking error
  if SUBWAY_SYSTEM.has_key?(selected_start_line)
    first_line_check = true

    # validate the second input
    while second_line_check == false
      selected_end_line = ask_puts(SECOND_LINE_PROMPT).to_sym

      # run the same test as above
      if SUBWAY_SYSTEM.has_key?(selected_end_line)

        # once both tests are passed run our methods according to the
        # lines selected in the two input prompts
        selected_start_line = SUBWAY_SYSTEM[selected_start_line]
        selected_end_line = SUBWAY_SYSTEM[selected_end_line]
        selected_start_stop = get_start_stop(SUBWAY_SYSTEM, selected_start_line)
        selected_end_stop = get_end_stop(SUBWAY_SYSTEM, selected_end_line)
        calculate_distance(selected_start_line, selected_start_stop, selected_end_line, selected_end_stop)

        second_line_check = true
      else
        puts "\nError. Select a line within the Subway System\n".foreground(:red).blink
      end
    end
  elsif selected_start_line.upcase == :"Q"
    puts "Goodbye!"
    lines_check = true
  else
    puts "\nError. Select a line within the Subway System\n".foreground(:red).blink
  end
end

