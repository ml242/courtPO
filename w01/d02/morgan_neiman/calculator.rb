def getarray(numIn) #method to make an array out of user's numbers
  puts "Enter the numbers you'd like me to use"
  numIn = gets.chomp #gets numbers
  numbers = numIn.split(" ") #separates numbers into individual strings
  workingArray = [] #create new array
  numbers.each { |num| workingArray << num.to_i } #adds each number to the end of workingArray
end


puts "Welcome to Calculator."
puts "Would you like to calculate something?"
puts "y/n"
firstIn = gets.chomp!.downcase

if firstIn == "n"
  puts "That's too bad. Bye!"
end
if firstIn != "n" && firstIn != "y"
  puts "I don't get it. Shutting down."
end

while firstIn == "y" #if user enters yes, begin calc program loop

workingArray = [] #makes workingArray empty array

puts "What operation would you like to perform?"
puts "Your options are: Add, Subtract, Multiply, Divide"
puts "Please enter your choice:"
choice = gets.chomp!.downcase
