=begin
All 3 subway lines intersect at Union Square,
but there are NO other intersection points.
The program takes the line and stop that a user is getting on at
and the line and stop that user is getting off at and
prints the total number of stops for the trip.
=end

def ask(question)
  puts question
  gets.chomp
end

SUBWAY = {
:N_line => ["times square", "34th", "28th-n", "23rd", "union square", "8th"],
:L_line => ["8th", "6th", "union square", "3rd", "1st"],
:six_line => ["grand central", "33rd", "28th-6", "23rd", "union square", "astor place"]
}

# take the line and stop the user is getting on at
line = ask("Which line are you boarding?").downcase
on = ask("Which stop are you boarding?").downcase
# take the line the user is getting off at
off = ask("Which stop do you get off at?").downcase

# print the total number of stops for the trip
# take the position of the first stop and calculate
# the absolute value of the difference

if line == "n"
  on_num = SUBWAY[:N_line].index(on)
  off_num = SUBWAY[:N_line].index(off)
  total_stops = on_num.to_i - off_num.to_i
  puts "You're going #{total_stops.to_i.abs} stop(s)."
end

# take index of on-stop
# take index of off-stop
# take the absolute value of the difference of the two


# total_stops = N_line.index("34th")
# print total_stops