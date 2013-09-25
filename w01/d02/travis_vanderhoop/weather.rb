puts "What's the temperature?"
temp_str = gets.chomp
temp_int = temp_str.to_i

if temp_str == "0" || temp_int < 0
    puts "Better wear a jacket if you plan on having fun."
  elsif temp_int == 0
    puts "You haven't provided me with a valid temperature."
  elsif temp_int < 80
    puts "Why don't you go for a leisurely stroll?"
  elsif temp_int < 100
    puts "Dude, you gotta go to the beach."
  end