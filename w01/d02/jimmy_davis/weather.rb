puts "What is the temperature today in degrees Farenheit?"
temp = gets. chomp!

# the while loop will run until the user inputs an acceptable integer.
# temp != "0" is not acceptable because that is the actual number 0
# which we want to run, so we have to make sure it is not equal to "0"
# temp.to_i == 0 is what you would get if the user entered a string
# because that evaluates to 0, so that's why we ask for a new input

while temp != "0" && temp.to_i == 0
  puts "I'm sorry I don't know what you mean..."
  puts "Please enter a temperature!"
  temp = gets.chomp!
end

if temp.to_i < 0
  puts "It is absolutely freezing out.. don't leave the house!!"
elsif temp.to_i >= 0 && temp.to_i < 30
  puts "It's really cold out there.. bundle up!"
elsif temp .to_i >= 30 && temp.to_i < 60
  puts "Don't forget to wear a jacket."
elsif temp.to_i >= 60 && temp.to_i < 90
  puts "It's pretty nice out.  You should be fine in shorts and a t-shirt.. Go have fun!"
else
  puts "It's HOT out there.. dress lightly and drink plenty of water!"
end