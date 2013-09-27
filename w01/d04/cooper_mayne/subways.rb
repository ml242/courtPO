SUBWAY_LINES =  {  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
                  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
                  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"] }

def count_stops_single_line( from_stop, to_stop, line )  # string, string, string
  line = SUBWAY_LINES[line.to_sym]
  from_index = line.index(from_stop)
  to_index = line.index(to_stop)
  #puts to_index.class, from_index.class
  indexs_sorted = [ to_index, from_index ].sort
  stops = indexs_sorted.last - indexs_sorted.first
end

def count_stops( from_stop, from_line, to_stop, to_line ) #string, string, string, string
  return count_stops_single_line( from_stop, to_stop, from_line ) if from_line == to_line

  leg_one = count_stops_single_line( from_stop, "Union Square", from_line )
  leg_two = count_stops_single_line( "Union Square", to_stop, to_line )

  ans = leg_one + leg_two
end

def menu
  puts "which line are you starting on?"
  puts "A) The N line", "B) The L line", "C) The 6 line"
  print "input a/b/c : "
  input = gets.chomp!

  from_line = case input
    when "a"
      "n_line"
    when "b"
      "l_line"
    when "c"
      "six_line"
    else 
      "puts NO NO NO!!!"
  end

  puts "which stop do you want to depart from?"

  stops = SUBWAY_LINES[from_line.to_sym]

  i=1
  stops.each do |stop|
    print i.to_s  + ") "
    puts stop
    i += 1
  end

  puts "input 1 through #{i-1}."
  input = gets.chomp!

  from_stop = stops[input.to_i-1] 

##============================================================
  puts "which line are you going to?"
  puts "A) The N line", "B) The L line", "C) The 6 line"
  print "input a/b/c : "
  input = gets.chomp!

  to_line = case input
    when "a"
      "n_line"
    when "b"
      "l_line"
    when "c"
      "six_line"
    else 
      "puts NO NO NO!!!"
  end

  puts "which stop are you going to?"

  to_stops = SUBWAY_LINES[to_line.to_sym]

  i=1
  to_stops.each do |stop|
    print i.to_s  + ") "
    puts stop
    i += 1
  end

  puts "input 1 through #{i-1}."
  input = gets.chomp!

  to_stop = to_stops[input.to_i-1] 


  #puts count_stops("n_line","Times Square","l_line","3rd" )
  
  #puts from_stop, from_line, to_stop, to_line
  puts "\nANSWER: its going to be #{count_stops( from_stop, from_line, to_stop, to_line)} stops."
  #puts from_stop, from_line, to_stop, to_line

  #puts count_stops_single_line("8th","3rd","l_line" )
end

menu
