require "rainbow"

def ask_puts(question)
  puts question
  gets.chomp
end

def ask_print(question)
  print question + " "
  gets.chomp
end

def get_start_stop(subway_system, selected_start_line)
  selected_start_line.each do |stop|
    puts "- #{stop}"
  end
  ask_print("From above, choose your start stop:".foreground(:blue))
end

def get_end_stop(subway_system, selected_end_line)
  selected_end_line.each do |stop|
    puts "- #{stop}"
  end
  ask_print("From above, choose your end stop:".foreground(:red))
end

def calculate_distance(selected_start_line, selected_start_stop, selected_end_line, selected_end_stop)
  unless selected_start_line == selected_end_line
    nexus = (selected_start_line & selected_end_line)

    unless nexus.empty?
      nexus.each do |element|
        nexus = element
      end

      selected_start_line_hash = Hash[selected_start_line.map.with_index.to_a]
      selected_end_line_hash = Hash[selected_end_line.map.with_index.to_a]

      start_station_num = selected_start_line_hash[selected_start_stop]
      end_station_num = selected_end_line_hash[selected_end_stop]

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
    selected_start_line_hash = Hash[selected_start_line.map.with_index.to_a]

    start_station_num = selected_start_line_hash[selected_start_stop]
    end_station_num = selected_start_line_hash[selected_end_stop]

    total_distance = (start_station_num - end_station_num).abs
  end
  unless total_distance == nil
    puts "You'll be travelling #{total_distance} stops.".foreground(:cyan).bright
  end
end

SUBWAY_SYSTEM = {
  :"N Line" => [
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

while first_line_check == false
  selected_start_line = ask_puts(FIRST_LINE_PROMPT).to_sym

  if SUBWAY_SYSTEM.has_key?(selected_start_line)
    first_line_check = true

    while second_line_check == false
      selected_end_line = ask_puts(SECOND_LINE_PROMPT).to_sym
      if SUBWAY_SYSTEM.has_key?(selected_end_line)
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

