def add(numbers)
  sum = 0
  numbers.each do |num|
    num.to_f
    sum += num
  end
  puts "The sum is #{sum}!"
end

def subtract(numbers)
  sum = numbers.shift()
  numbers.each do |num|
    num.to_f
    sum -= num
  end
  puts "The total is #{sum}!"
end

def multiply(numbers)
  sum = numbers.shift()
  numbers.each do |num|
    num.to_f
    sum *= num
  end
  puts "The total is #{sum}!"
end

def divide(numbers)
  sum = numbers.shift()
  numbers.each do |num|
    num.to_f
    sum /= num
  end
  puts "The total is #{sum}!"
end

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

puts "What would you like to do? \n \t * Add \n \t * Subtract \n \t * Multiply \n \t * Divide"
print ">  "
opperation = gets.chomp.downcase

numbers = []

greeting = "So you want to #{opperation}? Great! Please type the numbers you would like to #{opperation} together. \n Press enter or say 'Done' when you are finished."

if opperation == "add"
  puts greeting
  numbers_collect(numbers)
  add(numbers)
elsif opperation == "subtract"
  puts greeting
  numbers_collect(numbers)
  subtract(numbers)
elsif opperation == "multiply"
  puts greeting
  numbers_collect(numbers)
  multiply(numbers)
else
  puts greeting
  numbers_collect(numbers)
  divide(numbers)
end