

def ask(question)
  puts question
  gets.chomp
end

def riding_n_line(subway_system, selected_subway_line)
  # Ask user where they'r going
  selected_subway_line = subway_system[selected_subway_line]
  # ask("Where are you starting?")
  puts "Choose a stop to start at:"
  selected_subway_line.each do |stop|
    puts "- #{stop}"
  end

  selected_start_stop = ask("Choose your start stop:")
  selected_end_stop = ask("Choose your end stop:")

  selected_subway_line_hash = Hash[selected_subway_line.map.with_index.to_a]
  selected_subway_line_hash

  start_station_num = selected_subway_line_hash[selected_start_stop]
  end_station_num = selected_subway_line_hash[selected_end_stop]

  distance = (end_station_num - start_station_num).abs
end





# Ask user what line they're taking
SUBWAY_SYSTEM = {
  # :n_line => [
  #   "Times Square",
  #   "34",
  #   "28-N",
  #   "23-N",
  #   "Union Square",
  #   "8-N"
  # ],
  # :l_line => [
  #   "8-L",
  #   "6",
  #   "Union Square",
  #   "3",
  #   "1"
  # ],
  :six_line => [
    "Grand Central",
    "33",
    "28-N",
    "23-N",
    "Union Square",
    "Astor Place"
  ]
}
CHOOSE_LINES_PROMPT = "
WELCOME TO THE SUBWAY SYSTEM!

What line do you want to start at?
  > Enter 1 for the N Line
  > Enter 2 for the L Line
  > Enter 3 for the 6 Line
  > Enter Q to leave the Subway
"

selected_subway_line = ask(CHOOSE_LINES_PROMPT)

if selected_subway_line == "1"
 puts "You're riding the N Line"
 riding_n_line(SUBWAY_SYSTEM, :n_line)
elsif selected_subway_line == "2"
  puts "You're riding the L Line"
elsif selected_subway_line == "3"
  puts "You're riding the 6 Line"
  riding_n_line(SUBWAY_SYSTEM, :six_line)
elsif selected_subway_line.upcase == "Q"
  puts "Good Bye!"
else
  puts "error"
end


