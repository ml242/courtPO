# The program takes the line and stop that a user is getting on
# at and the line and stop that user is getting off at and prints the total number of stops for the trip.

# Get the program to work for a single line before trying to tackle multiple lines.


# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
require 'pry'
require 'rainbow'

system("clear")

def ask(question)
  puts question
  gets.chomp.downcase
end


subway = {
 "n" => ["Times Square", "34th", "28th on the n", "23rd on the n", "Union Square", "8th on the n"],
 "l" => ["8th on the l", "6th", "Union Square", "3rd", "1st"],
 "6" => ["Grand Central", "33rd", "28th on the 6", "23rd on the 6", "Union Square",  "Astor Place"]
}

# puts ask("Which subway line are you taking?")
# puts ask("Which subwat station are you getting in?")
# puts ask("Which subway station are you getting off?")


subway_line = ask("Which subway line are you taking?".color("#2980b9"))


while !subway.has_key?(subway_line)
  subway_line.capitalize
  puts "Sorry, #{subway_line} is not a subway station. Please try again.\n"
  subway_line = ask("Which subway line are you taking?".color("#2980b9"))
end

subway_in  = ask("Which subway station are you getting in?".color("#e74c3c")).to_s
subway_off = ask("Which subway station are you getting off?".color("#e74c3c")).to_s

#capitalize every word in the string to match it with the strings in the array
subway_in = subway_in.split(" ").map(&:capitalize).join(" ")
subway_off = subway_off.split(" ").map(&:capitalize).join(" ")


puts "\n"
first_stop = subway[subway_line].index(subway_in).to_i
last_stop = subway[subway_line].index(subway_off).to_i
number_of_stops = last_stop - first_stop

puts "You have #{number_of_stops} stop(s)".color("#2ecc71")

puts "\n"



