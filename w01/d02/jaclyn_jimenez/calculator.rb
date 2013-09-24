
$numbers = Array.new

def math_opperations(opperation)
  puts "So you want to #{opperation}? Great! Please type the numbers you would like to #{opperation} together. \n Say 'Done' when you are finished."
    number = 0
  while number.to_s.downcase != "done"
    number = gets.chomp
    if number != number.to_i.to_s && number != number.to_f.to_s
      number = "done"
    else
      $numbers << number.to_f
    end
  end
  puts "The numbers you have chosen are  " + $numbers.to_s
end

def add(numbers)
  sum = 0
  numbers.each do |num|
    num.to_f
    sum =+ num
  end
  puts "The sum is #{sum}!"
end

puts "Welcome to the Calculator!"

puts "What would you like to do? \n \t * Add \n \t * Subtract \n \t * Multiply \n \t * Divide"
print ">  "
input = gets.chomp.downcase

if input != "add"
  puts "Sorry that is not a valid command."
  puts input
else
  math_opperations(input)
end


if input == "add"
  add($numbers)
elsif input == "subtract"
  puts "subtract"
else
  puts "sorry I don't understand"
end
