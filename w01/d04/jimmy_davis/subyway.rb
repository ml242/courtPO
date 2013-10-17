# ##1. MTA - The NYC Subway System

# def ask(string)
#   puts string
#   gets.downcase.chomp!
# end

# # I want to count from one value in an array to another value of an array
# # based on the selected inputs by the user.
# # First create a method that will count the number of stops

# def number_of_stops(start, stop)
#   answer = stop - start
# end

subway_lines = {
    :n_line => ["times square",
                      "34th",
                      "28th-n",
                      "23rd",
                      "union square",
                      "8th-n"
                      ],
    :l_line => ["8th-l",
                      "6th",
                      "union square",
                      "3rd",
                      "1st"
                      ],
    :six_line => [ "grand central",
                      "33rd",
                      "28th-6",
                      "23rd-6",
                      "union square",
                      "astor place"
                    ]
}

# line_on = ask("What line are you getting on?")
# line_on = line_on.to_sym
# # stop_on = ask("What stop are you getting on?")
# line_off = ask("What line are you getting off?")
# line_off = line_off.to_sym
# # stop_off = ask("What stop are you getting off?")

# start = line_on
# stop = line_off


# # start = train_lines[line_on][stop_on]
# # stop = train_lines[line_off][stop_off]

# number_of_stops(stop, start)

# puts "Number of stops is #{stops}"


puts "Please enter the stop you are getting on"
gets_on = gets.chomp!
puts "Please enter the stop you are getting off"
gets_off = gets.chomp!

gets_on_subway = gets_on

case gets_on_subway
  when "n_line"
    starting_line  = :n_line
  when "l_line"
    starting_line = :l_line
  when "six_line"
    starting_line = :six_line
  else
    puts "We don't recognize that line."
end


gets_off_subway = gets_off

case gets_off_subway
  when "n_line"
    finish_line  = :n_line
  when "l_line"
    finish_line = :l_line
  when "six_line"
    finish_line = :six_line
  else
    puts "We don't recognize that stop."
end


if starting_line == finish_line
  trip_length = subway_lines[starting_line].index(gets_on) - subway_lines[finish_line].index(gets_off)
# Use difference of index numbers to calculate trip length.

  trip_length = trip_length.abs

  puts "Your trip length is #{trip_length}."
end
