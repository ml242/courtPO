require 'pry'

mta = {
  "n_line" => ["times square", "34th", "28th_n", "23rd_n", "union square", "8th_n"],
  "l_line" => ["8th_l", "6th", "union square", "3rd", "1st"],
  "six_line" => ["grand central", "33rd", "28th_6", "23rd_6", "union square", "astor place"]
}


def number_of_stops(stop1, stop2)   #this method calculates number of stops for stops on the same line.
  binding.pry
  answer = stop1 - stop2
  answer.abs
end

def stops_for_multiple_transfers(line_name, other_line_name, stop_index) #this method calculates number of stops on diffent subway lines
  common_stop_name = line_name & other_line_name
  common_stop_name.join                                                #turns array of 'common stop' into a string
  binding.pry
  common_stop_index = line_name.index(common_stop_name)                     #index of common stop
  binding.pry
  transfer_stops_num = number_of_stops(common_stop_index, stop_index)  #number of transfer stops
  transfer_stops_num
end

def ask(question)
  puts question
  gets.chomp!
end

line_on = ask("What line are you starting from?")
stop_on = ask("What stop are you starting from?")

line_off = ask("What line are you getting off")
stop_off = ask("What stop is your final destination?")

binding.pry

first_stop = mta[line_on].index(stop_on)           #this is the index of the first stop.
final_stop = mta[line_off].index(stop_off)    #this is the index of the second stop.

binding.pry

stops_num = number_of_stops(first_stop, final_stop)    # passes index of stops into method

binding.pry

test_num = number_of_stops( mta[line_on].index(stop_on), mta[line_off].index(stop_off) ) #this works
first_ride = stops_for_multiple_transfers(mta[line_on], mta[line_off], mta[line_on].index(stop_on)) #this doesnt
second_ride = stops_for_multiple_transfers(mta[line_off], mta[line_on], mta[line_off].index(stop_off))
stops_num2 = first ride + second_ride


if line_on == line_off          #if the station line names are the same
binding.pry
  puts "#{first_stop} is #{stops_num} away from #{final_stop}"
else
  puts "#{stop_on} is #{stops_num2} away from #{stop_off}"
end
