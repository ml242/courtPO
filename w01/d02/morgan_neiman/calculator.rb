

  #def getNumbers #method to make an array out of user's numbers
  #  puts "Enter the numbers you'd like me to use, separated by spaces."
  #  numIn = gets.chomp #gets numbers
  #  numbers = numIn.split(" ") #separates numbers into individual strings
  #  numbers.each { |num| workingArray << num.to_i } #adds each number to the end of workingArray
 # end

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
puts "Enter the numbers you'd like me to use, separated by spaces."
numIn = gets.chomp #gets numbers
numbers = numIn.split(" ") #separates numbers into individual strings
numbers.each { |num| workingArray << num.to_i } #adds each number to the end of workingArray

if choice == "add"
 # getNumbers
 sum = 0
  puts workingArray
  workingArray.each {|x| sum += x}
  puts "Your sum is #{sum}"
end

if choice == "subtract"
  dif = 0 + workingArray[0] + workingArray[0] #there are two of these to counteract the next step subtracting the first value
  workingArray.each {|num| dif - num}
  puts "Your difference is #{dif}"
end

if choice == "multiply"
  prod = 1
  workingArray.each {|num| prod * num}
  puts "Your product is #{prod}"
end

if choice == "divide"
  quot = 1 * workingArray[0] * workingArray[0] #two to counteract first division by first val in array
  workingArray.each {|num| quot / num }
  puts "Your quotient is #{quot}"
end

puts "Would you like to calculate something else?"
puts "y/n"
firstIn = gets.chomp.downcase

if firstIn == "n"
  puts "k bye!"
end

if firstIn != "n" && firstIn != "y"
  puts "I don't get it. Shutting down."
end

end

