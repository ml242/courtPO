require 'pry'
TRAINS = {
"n" => [
	"time square", 
	"34th-n", 
	"28th-n", 
	"23rd-n", 
	"union square", 
	"8th-n"
], 
"l" => [
	"8th-l", 
	"6th-l",
	"union square",
	"3rd-l",
	"4th-l"
], 
"6" => [
	"grand central", 
	"33rd-6",
	"28th-6",
	"23rd-6",
	"union square",
	"astor place", 
]
}

#question
station_question = "What train line did you get on: 6, n, or l?"
start_question =  "What stop did you get on: grand central, 33rd-6, 28th-6, 23rd-6, union square, or astor place?"
start_question1 = "What stop did you get on: time square, 34th-n, 28th-n, 23rd-n, union square, or 8th-n?"
start_question2 = "What stop did you get on: 8th-l, 6th-l, union square, 3rd-l, or 4th-l?"
stop_question = "What stop did you get off?: grand central, 33rd-6, 28th-6, 23rd-6, astor place, 8th-l, 6th-l, union square, 3rd-l, 4th-l, time square, 34th-n, 28th-n, 23rd-n, or 8th-n?"

#methods
def ask(question)
	puts question
	gets.chomp!
end

def same_line?(line, stop)
	TRAINS[line].include?(stop)
end

def single_line(line, start, stop)
	begins = TRAINS[line].index(start)
	ends = TRAINS[line].index(stop)
	stops = begins - ends
	return stops.abs
end

def two_line(line, start, stop)
	first_train = single_line(line, start, "union square")
	if TRAINS["n"].include?(stop)
		second_train = single_line("n", "union square", stop)
	elsif TRAINS["6"].include?(stop)
		second_train = single_line("6", "union square", stop)
	elsif TRAINS["l"].include?(stop)
		second_train = single_line("l", "union square", stop)
	end
		total_stops = second_train + first_train
end

#prompt the user for station
line = ask(station_question)
if line == "6"
	start = ask(start_question)
elsif line == "n"
	start = ask(start_question1)
elsif line == "l"
	start = ask(start_question2)
else
	puts "Sorry I don't recognize that train. Please eneter 6, l, or n."
end
 	
 stop = ask(stop_question)

one_line = same_line?(line, stop)

if one_line == true
	puts "Your trip was a total of #{single_line(line, start, stop)} stops"
else
	puts "Your trip was a total of #{two_line(line, start, stop)} stops"
end




