def ask(question)
  puts question
  gets.chomp.downcase
end

def number_of_stops(start, stop) #this method calculates number of stops for stops on the same line.
  ans = start - stop
  ans.abs
end

def stops_before_transfer(line_on, line_off) #this method calculates number of stops with transfers.
  common_stop = line_on & line_off
  common_stop.join
  stops_before_transfer_line_on = line_on.index("common_stop")  #number of stops from line_on
  stops_before_transfer_line_off = line_off.index("common_stop") #number of stops from line_on
  before_transfer = line_on - stops_before_transfer_line_on
  after_transfer = line_off - stops_before_transfer_line_off
  total_stops = before_transfer + after_transfer
  total_stops
end

mta = {
  "n_line" => ["times square", "34th", "28th_n", "23rd_n", "union square", "8th_n"],
  "l_line" => ["8th_l", "6th", "union square", "3rd", "1st"],
  "six_line" => ["grand central", "33rd", "28th_6", "23rd_6", "union square", "astor place"]
}

#a.index("string") finds index ..

# array = ['a', 'b', 'c']
# hash = Hash[array.map.with_index.to_a]    # => {"a"=>0, "b"=>1, "c"=>2}
# hash['b'] # => 1

line_on = ask("What line are you taking to start?")
stop_on = ask("What stop are you getting on at?")

line_off = ask("What line are you getting off?")
stop_off = ask("What stop are you getting off?")

start = mta[line_on].index(stop_on) #this will be the index of the stop.
stop = mta[line_off].index(stop_off) #this will be the index of a stop.

if line_on == line_off
stops_num = number_of_stops(start, stop)
puts "#{stop_on} is #{stops_num} away from #{stop_off}"
else
  stops_num = number_of_stops_with_transfers(start, stop)
  puts "#{stop_on} is #{stops_num} away from #{stop_off}"
end

# different lines...
#looking for it to count from stop 1 to union square, then from union square to second stop.
#if line1 does not equal line2
#do intersect method to see what they have in common
# number of stops (line1 from common_line) and number of stops ()



