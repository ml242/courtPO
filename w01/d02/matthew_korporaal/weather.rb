# weather.rb - clothing suggestions based on the weather

# User input
puts "What is the temp? "
temp = gets.chomp!
temp_int = temp.to_i

# initialize temperature thresholds (in Fahrenheit)
hot = 120
perfect = 80
cold = 60
freezing = 35

# Test input is not a string, ask again until number is given
# checks if temp has characters in the A-Z and a-z range
# note: Seems to work for all cases, except when number is
# followed by characters or special characters.
while ("a".."z").cover?(temp) || ("A".."Z").cover?(temp)
  puts "Do not understand input. Enter an integer"
  puts "What is the temp? "
  temp = gets.chomp!
  temp_int = temp.to_i
end

# Test cases. What to wear, what to wear?
if temp_int < freezing
  puts "Wear layers, it's freezing"
elsif temp_int < cold
  puts "Wear jacket, it's cold"
elsif temp_int < perfect
  puts "Wear t-shirt and shorts, it's perfect"
elsif temp_int < hot
  puts "Wear nothing, it's hot"
elsif
  puts "Stay inside it's hotttt!!!!"
end
