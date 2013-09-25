puts "Josh's Calculator Program"

puts "Please type the calculation you would like to run:"

puts "For addition, type 'add'"
puts "For subtraction, type 'sub'"
puts "For multiplication, type 'mult'"
puts "For division, type 'div'"
puts "For exponents, type 'exp'"
puts "For square roots, type 'sqrt'"
puts "To quit, type 'Quit'"

user_input = gets.chomp!

while user_input != 'Quit'

  if user_input == 'add'

puts "Enter first number, press enter, then the second number, and press enter again."

add_input1 = gets.chomp!
add_input2 = gets.chomp!

puts add_input1.to_f + add_input2.to_f

user_input = gets.chomp!

end

if user_input == 'sub'

  puts "Enter first number, press enter, then the second number, and press enter again."

subtract_input1 = gets.chomp!
subtract_input2 = gets.chomp!

puts subtract_input1.to_f - subtract_input2.to_f

user_input = gets.chomp!

end

if user_input == 'mult'

  puts "Enter first number, press enter, then the second number, and press enter again."

mult_input1 = gets.chomp!
mult_input2 = gets.chomp!

puts mult_input1.to_f * mult_input2.to_f

user_input = gets.chomp!

end

if user_input == 'div'

  puts "Enter first number, press enter, then the second number, and press enter again."

div_input1 = gets.chomp!
div_input2 = gets.chomp!

puts div_input1.to_f / div_input2.to_f

user_input = gets.chomp!

end

if user_input == 'exp'

  puts "Enter first number, press enter, then the second number, and press enter again."

exp_input1 = gets.chomp!
exp_input2 = gets.chomp!

puts exp_input1.to_f ** exp_input2.to_f

user_input = gets.chomp!

end

if user_input == 'sqrt'

  puts "Enter number for which you would like to find its square root, and then press enter"

sqrt_input1 = gets.chomp!

puts Math.sqrt(sqrt_input1.to_f)

user_input = gets.chomp!

end

if user_input == 'Quit'

puts "Thanks for using Josh's Calculator Program"

end
end