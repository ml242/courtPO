def ask(question)
  puts question
  gets.chomp
end

# #There are 3 subway lines:
# #The N line has the following stops:
# #Times Square, 34th, 28th, 23rd, Union Square, and 8th

# The L line has the following stops:
# 8th, 6th, Union Square, 3rd, and 1st

# The 6 line has the following stops:
# Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.

# All 3 subway lines intersect at Union Square, but there are NO other intersection points.
# For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line,
# so you'll have to differentiate this when you name your stops in the arrays.
# (example: "28th-s" for 6 line and "28th-n" for n line)

# The program takes the line and stop that a user is getting on at
# and the line and stop that user is getting off at
# and prints the total number of stops for the trip

#a.index finds index ..

# array = ['a', 'b', 'c']
# hash = Hash[array.map.with_index.to_a]    # => {"a"=>0, "b"=>1, "c"=>2}
# hash['b'] # => 1

def number_of_stops(start, stop)
  ans = stop - start
end

mta = {
  "n_line" => {"Times Square" => 1, "34th" => 2, "28th_n" => 3, "23rd_n" => 4, "Union Square" => 5 , "8th_n" =>6},
  "l_line" => {"8th_l" => 1, "6th" => 2, "Union Square" => 2, "3rd" => 3, "1st" => 4},
  "six_line" => {"Grand Central" => 1, "33rd" => 2, "28th_6" => 3, "23rd_6" => 4, "Union Square" => 5, "Astor Place" => 6}
}

line_on = ask("What line are you taking to start?")
stop_on = ask("What stop are you getting on at?")

line_off = ask("What line are you getting off?")
stop_off = ask("What stop are you getting off?")

start = mta[line_on][stop_on]
stop = mta[line_off][stop_off]

stops = number_of_stops(start, stop)


#puts "So you're getting on at #{start} and getting off at #{stop}"

def stop_count(start, stop)

end

