
puts "User would you like to add, subtract, multiply, divide, exponents, square root (sqrt) or quit?"
input = gets.chomp!

while input != 'quit'
  def add(num1,num2)
    return num1 + num2
  end

  def subtract(num1,num2)
    return num1 - num2
  end

  def multiply (num1,num2)
    return num1 * num2
  end

  def divide(num1,num2)
    return num1 / num2
  end

  def exponents(num1,num2)
     return num1**num2
  end

  def sqrt(num1)
    return num1**0.5
  end

  if input == "add"

    print "What is value for num1?"
    num1 = gets.chomp.to_f #if you don't put to integer it will print out a string together.
    print "What is value for num2?"
    num2 = gets.chomp.to_f


    sum = add(num1,num2)

    puts " Your sum is #{sum}"
    puts  "User would you like to add, subtract, multiply, divide, exponents, square root or quit?"
    input = gets.chomp!
  end

  if input == "subtract"

    print "What is value for num1?"
    num1 = gets.chomp.to_f #if you don't put to integer it will print out a string together.
    print "What is value for num2?"
    num2 = gets.chomp.to_f

    subtract = subtract(num1,num2)

    puts " Your difference is #{subtract}"
    puts  "User would you like to add, subtract, multiply, divide, exponents, square root or quit?"
    input = gets.chomp!
  end

  if input == "divide"

    print "What is value for num1?"
    num1 = gets.chomp.to_f #if you don't put to integer it will print out a string together.
    print "What is value for num2?"
    num2 = gets.chomp.to_f

    divide = divide(num1,num2)

    puts " Your qoutient is #{divide}"
    puts  "User would you like to add, subtract, multiply, divide, exponents, square root or quit?"
    input = gets.chomp!
  end

  if input == "multiply"

    print "What is value for num1?"
    num1 = gets.chomp.to_f #if you don't put to integer it will print out a string together.
    print "What is value for num2?"
    num2 = gets.chomp.to_f

    mulitply = multiply(num1,num2)

    puts " Your product is #{multiply}"
    puts  "User would you like to add, subtract, multiply, divide, exponents, square root or quit?"
  end

    if input == "exponents"

    print "What is value for num1?"
    num1 = gets.chomp.to_f #if you don't put to integer it will print out a string together.
    print "What is value for num2?"
    num2 = gets.chomp.to_f

    exponents = exponents(num1, num2)

    puts " Your exponents is #{exponents}"
    puts  "User would you like to add, subtract, multiply, divide, exponents, square root or quit?"
    input = gets.chomp!
  end

      if input == "sqrt"

    print "What is value you want the sqare root of?"
    num1 = gets.chomp.to_f #if you don't put to integer it will print out a string together.

    sqrt = sqrt(num1)

    puts " The square root is #{sqrt}"
    puts  "User would you like to add, subtract, multiply, divide, exponents, square root or quit?"
    input = gets.chomp!
  end

end

print "You wanted to stop \n"