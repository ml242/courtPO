require 'sinatra'
require 'sinatra/reloader' if development?








#commented out..


# MTA = {
#   :ltrain => ["8th_l", "6th", "union_square", "3rd", "1st"],
#   :gtrain => ["greenpoint", "nassau", "metropolitan", "broadway"],
#   :ntrain => ["times square", "34th", "28th_n", "23rd_n", "union square", "8th_n"],
#   :6line => ["grand central", "33rd", "28th_6", "23rd_6", "union square", "astor place"]
# }



# get "plan.html?:start_train&:stop1&:stop2" do
#   first_stop = MTA[:start_train].index(:stop1)
#   second_stop = MTA[:start_train].index(:stop2)
#   ans = first_stop - second_stop
#   puts ans.to_s
# end

# def number_of_stops(stop1, stop2)   #this method calculates number of stops for stops on the same line.
#   answer = stop1 - stop2
#   answer.abs
# end

# #this method calculates number of stops on diffent subway lines
# def stops_for_multiple_transfers(line_name, other_line_name, stop_index)
#   common_stop_name = line_name & other_line_name
#   common_stop_name = common_stop_name.join                           #turns array of 'common stop' into a string
#   common_stop_index = line_name.index(common_stop_name)               #index of common stop
#   transfer_stops_num = number_of_stops(common_stop_index, stop_index)  #number of transfer stops
#   transfer_stops_num
# end

# def ask(question)
#   puts question.foreground(:cyan)
#   gets.chomp!
# end

# puts "Please choose from the following lines and stops:
# lines: n line, l line, 6 line \n
# n line: times square, 34th, 28th_n, 23rd_n, union square, 8th_n
# l line: 8th_l, 6th, union square, 3rd, 1st
# 6 line: grand central, 33rd, 28th_6, 23rd_6, union square, astor place \n".foreground(:yellow)

# line_on = ask("What line are you starting from?")
# stop_on = ask("What stop are you starting from?")

# line_off = ask("What line are you getting off?")
# stop_off = ask("What stop is your final destination?")

# first_stop = mta[line_on].index(stop_on)           #this is the index of the first stop.
# final_stop = mta[line_off].index(stop_off)    #this is the index of the second stop.


# if line_on == line_off          #if the station line names are the same
#   stops_num = number_of_stops(first_stop, final_stop)    # passes index of stops into method
#   puts "\n #{stop_on} is #{stops_num} stops away from #{stop_off}. \n".foreground(:magenta)
# else
#   first_ride = stops_for_multiple_transfers(mta[line_on], mta[line_off], mta[line_on].index(stop_on)) #this doesnt
#   second_ride = stops_for_multiple_transfers(mta[line_off], mta[line_on], mta[line_off].index(stop_off))
#   stops_num2 = first_ride + second_ride
#   puts "\n #{stop_on} is #{stops_num2} stops away from #{stop_off}. \n".foreground(:magenta)
# end
