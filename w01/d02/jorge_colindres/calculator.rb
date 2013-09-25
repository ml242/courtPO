include Math

quit = false
operators = ["+", "-", "*", "/", "**", "//"]
operators_string = operators.join(", ")

until quit == true
  puts "These are the operations I can calculate: " + operators_string
  puts "What kind of math do you want to do? Or, type quit to leave."
  operator = gets.chomp!
  if operator == "+" || operator == "-" || operator == "*" || operator == "/" || operator == "**"
    puts "First number to calculate?"
    resp1 = gets.chomp!
    num1 = resp1.to_f
    puts "Second number to calculate?"
    resp2 = gets.chomp!
    num2 = resp2.to_f

    case operator
      when "+" then result = num1 + num2
      when "-" then result = num1 - num2
      when "*" then result = num1 * num2
      when "/" then result = num1 / num2
      else result = num1 ** num2
    end

    result = result.to_s

    puts "Your result is: " + result
  elsif operator == "//"
    puts "Find the square root of what number?"
    root_of = gets.chomp!
    root_of_int = root_of.to_f

    result = sqrt(root_of_int).to_s

    puts "Your result is: " + result
  elsif operator.capitalize == "Quit"
    quit = true
  else
    puts "WTF?"
  end
end

puts "Ok, no more maths!"