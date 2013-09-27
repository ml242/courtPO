puts "Welcome to Calculator."
puts "Would you like to calculate something?"
puts "y/n"
firstIn = gets.chomp!.downcase

if firstIn == "n"
# If user answers "n", end program here.
  puts "That's too bad. Bye!"
end
if firstIn != "n" && firstIn != "y"
# If user types anything but "y" or "n", end program here.
  puts "I don't get it. Shutting down."
end

while firstIn == "y"
#if user enters yes, begin calc program loop.

workingArray = [] # Makes workingArray into an empty array.

puts "What operation would you like to perform?"
puts "Your options are: Add, Subtract, Multiply, Divide, Exponent, Square Root"
puts "Please enter your choice:"
choice = gets.chomp!.downcase
# User enters choice between calculator functions.

if choice == "exponent"
# If user chooses exponent
  puts "Please enter the initial value (the one we'll be raising to a power)."
  starting_num = gets.chomp!
  # Gets first value, to be raised to a power.

  if starting_num != "0" && starting_num.to_i == 0
  # Checks for non-numerical characters.
    puts "Hey, that's not a number."
  else
    starting_num = starting_num.to_i
    # Converts this value into an integer.
    puts "Please enter the power you'd like to raise it to."
    # Gets power to raise starting_num to.
    power = gets.chomp!
    if power != "0" && power.to_i == 0
      puts "Hey, that's not a number."
    else
      power = power.to_i
      exp = starting_num ** power
      puts "Your exponent is #{exp}"
    end
  end

elsif choice == "square root"
  puts "Please enter the number you'd like to find the square root of."
  to_square = gets.chomp!
  if to_square != "0" && to_square.to_i == 0
      puts "Hey, that's not a number."
  else
    to_square = to_square.to_i
    sqr = to_square ** (0.5)
    puts "Your square root is #{sqr}"
  end

else
puts "Enter the numbers you'd like me to use, separated by spaces. Put in as many as you'd like!"
numIn = gets.chomp
# Gets numbers.
numbers = numIn.split(" ")
# Separates numbers into individual strings.
numbers.each { |num| workingArray << num.to_i }
# Adds each number to the end of workingArray.

if choice == "add"
  sum = 0
  # Creates variable sum.
  workingArray.each {|num| sum += num}
  # Sum increases by each item in array.
    puts "Your sum is #{sum}"
end

if choice == "subtract"
  dif = 0 + workingArray[0] + workingArray[0]
  # There are two of these to counteract the next step subtracting the first value.
  workingArray.each {|num| dif -= num}
  # Dif decreases by each item in array.
  puts "Your difference is #{dif}"
end

if choice == "multiply"
  prod = 1 #begin prod at 1
  workingArray.each {|num| prod *= num} #prod multiplies by each item in array
  puts "Your product is #{prod}"
end

if choice == "divide"
  quot = 1 * workingArray[0] * workingArray[0]
  #multiplied two times by first item in array to counteract first division by first val in array
  workingArray.each {|num| quot /= num } #quot divides by each item in array
  puts "Your quotient is #{quot}"
end

puts "Would you like to calculate something else?" #option to break out of while loop
puts "y/n"
firstIn = gets.chomp.downcase #unless firstIn == y, will break

if firstIn == "n" #ends program
  puts "k bye!"
end

if firstIn != "n" && firstIn != "y" #ends program
  puts "I don't get it. Shutting down."
end

end

end

