=begin
INSTRUCTIONS
1. MTA - The NYC Subway System
There are 3 subway lines:
The N line has the following stops:
  Times Square, 34th, 28th, 23rd, Union Square, and 8th
The L line has the following stops:
  8th, 6th, Union Square, 3rd, and 1st
The 6 line has the following stops:
  Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
All 3 subway lines intersect at Union Square,
  but there are NO other intersection points.
For example, this means the 28th stop on the N line
  is different than the 28th street stop on the 6 line,
  so you'll have to differentiate this when you name
  your stops in the arrays.
  (example: "28th-s" for 6 line and "28th-n" for n line)

The program takes the line and stop that a user is
getting on at and the line and stop that user is getting
off at and prints the total number of stops for the trip.

HINTS
Get the program to work for a single line before
trying to tackle multiple lines.
Consider diagramming the lines by sketching
out the subway lines and their stops and intersection.
Make subway lines keys in a hash,
while the values are an array of all the stops on each line.
The keys to your hash should be symbols.
Keep in mind that symbols cannot begin with a number.
The key to the lab is the intersection of the lines at
Union Square. Google "ruby array intersect."
Make sure the stops that are the same for different lines have different names
(i.e. 23rd on the N and on the 6 need to be differentiated)
=end

#Make subway lines keys in a hash,
#while the values are an array of all the stops on each line
SUBWAY_LINES = {
  :N_Line => ["Times Square", "34th", "28th N", "23rd N", "Union Square N", "8th N"],
  :L_line => ["8th L", "6th", "Union Square L", "3rd", "1st"],
  :Six_line => ["Grand Central", "33rd", "28th SIX", "23rd SIX", "Union Square SIX", "Astor Place"],
}

def ask(string)
  puts string
  gets.chomp!
end

on_train = ask("Which train will you take? Type 'N', 'L', or '6'")
on_stop = ask("Which stop will you enter? Enter an option from the menu: \n #{SUBWAY_LINES}")
off_train= ask("Which stop will you exit? Enter an option from the menu: \n #{SUBWAY_LINES}")
puts "You get on the : #{on_train}, at #{on_stop}. You get off at #{off_train}"






