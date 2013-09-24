game = "y" #sets initial value for while loop as y
while game == "y" #start loop
puts "How cold is it in degrees? (Fahrenheit)"
temp = gets.chomp! #gets input
counter = 0

while temp != "0" && temp.to_i == 0 && counter < 2
  #accounts for possibility that user will enter temp 0
  #checks for non-numerical inputs
  #gives users 3 tries to enter a numerical value
puts "I'm sorry, I don't know what you mean."
  puts "Please, enter a number this time"
  puts "How cold is it in degrees? (Fahrenheit)"
  temp = gets.chomp!
  counter += 1
end

while temp != "0" && temp.to_i == 0 && counter >= 2
  #same as above, changes response if user enters
  #more than 3 non-numerical values
puts "Seriously, you're pissing me off now."
  puts "Please, enter a number this time"
  puts "How cold is it in degrees? (Fahrenheit)"
  temp = gets.chomp!
  counter += 1
end

if temp.to_i < 60
  puts "You should wear a jacket."
elsif temp.to_i > 60 && temp.to_i < 70
  puts "It's nice out, but you should bring a sweater."
elsif temp.to_i > 70 && temp.to_i <= 100
  puts "Wow! Hot out! Maybe some shorts?"
else
  puts "You should be careful it's really freaking hot outside"
end

puts "Thanks for using my program!"

puts "Do you want to play again? y/n"
game = gets.chomp!.downcase

if game != "y" && game != "n"
  puts "You didn't enter y or n. Ending game. Pay more attention!"
end

if game == "n"
  puts "bye!"
end

end