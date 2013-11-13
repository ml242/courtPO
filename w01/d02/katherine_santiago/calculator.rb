
while (num1 != "q") || (num2 != "q") || (operation != "q")

def menu
  puts "CALCULATOR"
  puts "Balance = 0"
  puts " + - * /"
  puts "Enter first number or enter 'q' to quit"
  num1 = gets.downcase.chomp!
end

if num1 == "q"
  puts "Thanks, bye!"

elsif
  num1 = num1.to_f
  puts "type '+' to add"
  puts "type '-' to substract"
  puts "type '*' to multiply"
  puts "type '/' to divide"
  puts "What would you like to do?"
end

calculator = gets.chomp!
if calculator != '+' && calculator != '-' && calculator != '*' && calculator  != '/'
    puts "Please enter '+' '-' '*' or '/'"
    calculator = gets.chomp!
else
    puts "Enter second number"
num2 = gets.chomp!
num2 = num2.to_f
end


if calculator == '+'
  ans = num1 + num2
  puts "Answer = #{ans}"

elsif calculator == '-'
  ans = num1 - num2
  puts "Answer = #{ans}"

elsif calculator == '*'
  ans = num1 * num2
  puts "Answer = #{ans}"

elsif calculator == '/'
  ans = num1 / num2
  puts "Answer = #{ans}"

end

end

end








