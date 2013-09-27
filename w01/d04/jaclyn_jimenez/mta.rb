require 'pry'

def ask(question)
  puts question
  gets.chomp.downcase
end

def number_of_stops(start, final_stop)#this method calculates number of stops for stops on the same line.
binding.pry
  ans = start - final_stop
  ans.abs
end

def number_of_stops_multiple_transfers(line_name, other_line_name, stop_index) #this method calculates number of stops on diffent subway lines
  common_stop_name = line_name & other_line_name
  common_stop_name.join                                                #turns array of 'common stop' into a string
  common_stop_index = line_name.index(common_stop_name)                     #index of common stop
  transfer_stops_num = number_of_stops(common_stop_index, stop_index)  #number of transfer stops
  transfer_stops_num
end


mta = {
  "n_line" => ["times square", "34th", "28th_n", "23rd_n", "union square", "8th_n"],
  "l_line" => ["8th_l", "6th", "union square", "3rd", "1st"],
  "six_line" => ["grand central", "33rd", "28th_6", "23rd_6", "union square", "astor place"]
}

line_on = ask("What line are you taking to start?")
stop_on = ask("What stop are you getting on at?")

line_off = ask("What line are you getting off?")
stop_off = ask("What stop are you getting off?")

start = mta[line_on].index(stop_on)           #this is the index of the first stop.
final_stop = mta[line_off].index(stop_off)    #this is the index of the second stop.
binding.pry

if line_on == line_off
  binding.pry
  stops_num = number_of_stops(start, final_stop)
  puts "#{stop_on} is #{stops_num} away from #{stop_off}"
else
  binding.pry
  first_ride = number_of_stops_multiple_transfers(mta[line_on], mta[line_off], start)
  second_ride = number_of_stops_multiple_transfers(mta[line_off], mta[line_on], final_stop)
  stops_num = first ride + second_ride
  puts "#{stop_on} is #{stops_num} away from #{stop_off}"
end
