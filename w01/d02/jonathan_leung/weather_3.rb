while true
  puts "What is the weather like?"
  degrees_str = gets.chomp!
  degrees = degrees_str.to_i    

  while degrees == 0 && degrees_str != "0"
    puts "Hmm, I didn't understand #{degrees_str}, can you try telling me again?"
    degrees_str = gets.chomp!
    degrees = degrees_str.to_i    
  end 

  puts "The degrees is #{degrees}"

  if degrees > 80
    puts "It's hot in here, wear some shorts!"
  elsif degrees > 60
    puts "It's decently warm, wear something"
  else
    puts "burr, it's cold! Wear layers!"
  end

  puts "\nPuts Enter to Run Again!"
end