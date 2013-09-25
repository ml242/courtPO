puts "What's the temperature (in degrees)?"
temp = gets.chomp!
temp_int = temp.to_i

if temp == "0" || temp_int < 0
  puts "It's really cold"
elsif temp_int == 0
  puts "Sorry, I don't know what you mean."
elsif temp_int < 45
  puts "You should wear a coat!"
elsif temp_int < 65
  puts "You should wear a jacket!"
else
  puts "You should wear a t-shirt!"
end


###fix the kick out tonight so it will ask for a number###






