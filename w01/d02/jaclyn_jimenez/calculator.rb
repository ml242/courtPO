
# Methods for basic Math Opperations
def add(numbers)
  sum = 0
  numbers.each do |num|
    sum += num
  end
  puts "The sum is #{sum}!"
end

def subtract(numbers)
  sum = numbers.shift()
  numbers.each do |num|
    sum -= num
  end
  puts "The total is #{sum}!"
end

def multiply(numbers)
  sum = numbers.shift()
  numbers.each do |num|
    sum *= num
  end
  puts "The total is #{sum}!"
end

def divide(numbers)
  sum = numbers.shift()
  numbers.each do |num|
    sum /= num
  end
  puts "The total is #{sum}!"
end

# Method for collecting input (numbers) into array.
# Checks that each input is a vaild number. Changes to float.
def numbers_collect(array)
  number = 0
  while number.to_s.downcase != "done"
    number = gets.chomp
    if number != number.to_i.to_s && number != number.to_f.to_s
      number = "done"
    else
      array << number.to_f
    end
  end
  puts "The numbers you have chosen are  " + array.to_s
end



puts "Welcome to the Calculator!"

puts "What would you like to do? \n \t * Add \n \t * Subtract \n \t * Multiply \n \t * Divide \n \t * Find Square Root (sqrt) \n \t * Raise Exponent"
print ">  "
operation = gets.chomp.downcase

numbers = []

greeting = "So you want to #{operation}? Great! Please type the numbers you would like to #{operation} together. \n Press enter or say 'Done' when you are finished."

if operation == "add"
  puts greeting
  numbers_collect(numbers)
  add(numbers)
elsif operation == "subtract"
  puts greeting
  numbers_collect(numbers)
  subtract(numbers)
elsif operation == "multiply"
  puts greeting
  numbers_collect(numbers)
  multiply(numbers)
elsif operation == "divide"
  puts greeting
  numbers_collect(numbers)
  divide(numbers)
elsif operation == "square root" || operation == "sqrt"
  puts "Please type the number you would like the square root of"
  num1 = gets.chomp.to_f
  ans = Math.sqrt(num1)
  puts ans
elsif operation == "exponent"
  puts "Please type the number to raise to a power"
  num1 = gets.chomp.to_i
  puts "Please type the number you would like to raise #{num1} to that power"
  num2 = gets.chomp.to_i
  ans = num1**num2
  puts ans
else
  puts "Sorry, that is not an operation I understand."
end