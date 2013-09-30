# method for add
def add(number1, number2)
	sum = number1 + number2
	puts "The sum is #{sum}"
end

#method for sub
def sub(number1, number2)
	diff = number1 - number2
	puts "The difference is #{diff}"
end

#method for mult
def mult(number1, number2)
	product = number1 * number2
	puts "The product is #{product}"
end

#method for div
def div(number1, number2)
	quotient = number1 / number2
	puts "The quotient is #{quotient}"
end

#method for square root
def sqrt(number)
	root = number ** 0.5
	puts "The square root is #{root}"
end

#method for exponent
def expo(number1, number2)
	exponent = number1 ** number2
	puts "The exponent is #{exponent}"
end


#prompt user to begin calculator
puts "Would you like to use the calculator?(yes/no)"
calculator = gets.chomp.downcase
while calculator == "yes"
	#prompt user for operation method
	puts "Please choose from the following operations"
	puts "add, subtract, multiply, divide, exponent, or square root"
	operation = gets.chomp
	#prompt user for numbers to perform operation on
	if operation == "square root"
		puts "Input number you would like to find the square root of."
		number = gets.chomp.to_i
		sqrt(number)
	else
		puts "Please input the first number for your operation"
		#get users input for first integer
		number1 = gets.chomp.to_i
		#prompt user for numbers to perform operation on
		puts "Please input the second number for your operation"
		#get users input for second integer
		number2 = gets.chomp.to_i

			if operation == "add"
				add(number1, number2)
			elsif operation == "subtract"
				sub(number1, number2)
			elsif operation == "multiply"
				mult(number1, number2)
			elsif operation == "divide"
				div(number1, number2)
			elsif operation == "exponent"
				expo(number1, number2)
			else
				puts "I do not recognize that operation, please choose from the given options."
			end
	end
	puts "Would you like to use the calculator again?"
	calculator = gets.chomp.downcase
	break if calculator == "no"
end

