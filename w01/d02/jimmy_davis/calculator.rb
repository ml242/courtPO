puts "What math function do you want to perform: 'add', 'sub', 'mul', 'div', 'exp', 'sqrt' ?"
input = gets.downcase.chomp!

if  input == 'add'
  puts "Please enter 2 numbers to add"
  num1 = gets.chomp!.to_i
  num2 = gets.chomp!.to_i

puts num1 + num2

elsif  input == 'sub'
  puts "Please enter 2 numbers to subtract"
  num3 = gets.chomp!.to_i
  num4 = gets.chomp!.to_i

puts num3 - num4

elsif input == 'mul'
  puts "Please enter 2 numbers to multiply"
  num5 = gets.chomp!.to_i
  num6 = gets.chomp!.to_i

puts num5 * num6

elsif input == 'div'
  puts "Please enter 2 numbers to divide"
  num7 = gets.chomp!.to_i
  num8 = gets.chomp!.to_i

puts num7 / num8

elsif input == 'exp'
  puts "Please enter a number, and then a number to raise it to that power"
  num9 = gets.chomp!.to_i
  num10 = gets.chomp!.to_i

  puts num9 ** num10

elsif input == "sqrt"
  puts "What number do you want to find the square root of?"
  num11 = gets.chomp!.to_i

  puts Math.sqrt(num11)

else
  "Please enter a valid function!"
end

