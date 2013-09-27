# w01_d04_hw_mta quin cogdell
require 'pry'
require 'pry-nav'

def ask(string)
  puts string
  gets.downcase.chomp! #refactor
end

train_line_options = "N, L or 6 trains"
train_stops_available = {
  :n => ['times square', '34th', '28th-n', '23rd-n', 'union square', '8th-n'],
  :l => ['8th-l', '6th', 'union Square', '3rd', '1st'],
  :six => ['grand central', '33rd', '28th', '23rd', 'union square', 'astor place']
}

#should add another hash for 'junctions' that is used to lookup where trains change

def start_mta(train_line_options, train_stops_available)
  user_select_train_line = "Please select from  #{train_line_options}"
  user_select_train_stop = "Please select from the following train stops "

  #ask user which line they will start on
  puts "Which train line will you start your ride on today?"
  starting_train_line = ask(user_select_train_line)
  starting_train_line = starting_train_line.to_sym
  available_stops_start = train_stop_selection(starting_train_line, train_stops_available)
  starting_train_stop = ask("#{user_select_train_stop} #{available_stops_start}") #provide the user a list of stops

  #ask user which line they will end on
  puts "On which line will you end your commute?"
  ending_train_line = ask(user_select_train_line)
  ending_train_line = ending_train_line.to_sym
  available_stops_end = train_stop_selection(ending_train_line, train_stops_available)
  ending_train_stop = ask("#{user_select_train_stop} #{available_stops_start}")  #provide the user a list of stops

  stops_traveled = calc_num_stops(starting_train_line, starting_train_stop, available_stops_start, ending_train_line, ending_train_stop, available_stops_end, train_stops_available)

  puts "You traveled #{stops_traveled}"
end


def train_stop_selection(train_line_input, train_stops_available)
  selected_train_line_stops = train_stops_available[train_line_input]
end

#can we use a slice?
def calc_num_stops(starting_train_line, starting_train_stop, available_stops_start, ending_train_line, ending_train_stop, available_stops_end, train_stops_available)
  if starting_train_line == ending_train_line
    start_stop_index = available_stops_start.index(starting_train_stop)
    end_stop_index = available_stops_start.index(ending_train_stop)
    #binding.pry
    route_traveled = available_stops_start.slice(start_stop_index..end_stop_index)
    distance_traveled = route_traveled.size - 1   #adjusts so that starting stop is not counted as a stop

  end

end

start_mta(train_line_options, train_stops_available)