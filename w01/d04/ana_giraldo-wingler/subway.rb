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
:N_line => ["times square", "34th", "28th-n", "23rd-n", "union square", "8th-n"],
:L_line => ["8th-l", "6th", "union square", "3rd", "1st"],
:six_line => ["grand central", "33rd", "28th-6", "23rd-6", "union square", "astor place"]
}

# take the line and stop the user is getting on at
orig_line = ask("Enter the train line you're boarding (N/L/6):").downcase
transfer = ask("Do you plan to transfer trains? (y/n)").downcase
on = ask("Enter the stop you're boarding:").downcase
# take the line the user is getting off at
off = ask("Enter the stop you're getting off at:").downcase

# print the total number of stops for the trip
# take the position of the first stop and calculate
# the absolute value of the difference

# take the number of stops btw boarding line stop and "union square"
# (transfer point) and add it to number of stops btw end line stop
# and "union square"

if transfer == "y"
  trans_line = ask("To which line?")
end

if orig_line == "n"
  on_num = SUBWAY[:N_line].index(on)
  off_num = SUBWAY[:N_line].index(off)
  total_stops = on_num - off_num
  puts "You're going #{total_stops.abs} stop(s)."
end

if orig_line == "l"
  on_num = SUBWAY[:L_line].index(on)
  off_num = SUBWAY[:L_line].index(off)
  total_stops = on_num - off_num
  puts "You're going #{total_stops.abs} stop(s)."
end

if orig_line == "6"
  on_num = SUBWAY[:six_line].index(on)
  off_num = SUBWAY[:six_line].index(off)
  total_stops = on_num - off_num
  puts "You're going #{total_stops.abs} stop(s)."
end

# total_stops = N_line.index("34th")
# print total_stops