puts "What is the temperature?"
temp = gets.chomp!

while temp != "0" && temp.to_i == 0
  puts "Please enter the weather in degrees Farenheit."
  temp = gets.chomp!
end

  if temp.to_i < 60
  puts "Wear a jacket before you have fun"
else
  puts "Go have fun"
end

## If their input does not contain the numbers 0-9

