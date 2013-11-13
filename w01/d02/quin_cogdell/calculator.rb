#w02d02_homework by Quin Cogdell
def intial_prompt()
    puts "Welcome to Quin's Kick_Hash Calculator!"
    puts "Enter a number to begin calculating!"
    input_one = gets.chomp!
    prompt(input_one)
end

def prompt(input_one)
    puts "What operation would you like to perform on " + input_one + "?"
    puts " -- Type 'add' for addition"
    puts " -- Type 'subtract' for subtraction"
    puts " -- Type 'multiply' for multiplication"
    puts " -- Type 'divide' for division"
    puts " -- Type 'power' for exponents"
    puts " -- Type 'root' for square root"
    operation= gets.downcase.chomp!

    #this can be improved by making the input_two optional
    if operation != 'root'
        puts "Enter another number"
        input_two = gets.chomp!
    else
        input_two = 0
    end
    router(input_one, input_two, operation)
end

def router(input_one, input_two, operation)
  case operation
    when 'add'
      addition(input_one, input_two)
    when 'subtract'
        subtract(input_one, input_two)
    when 'multiply'
        multiply(input_one, input_two)
    when 'divide'
       divide(input_one, input_two)
    when 'power'
       power(input_one, input_two)
    when 'root'
       root(input_one, input_two)
    else
        puts "I'm sorry I don't know how to perform that operation"
        puts "Please try again"
    end
end

def addition(num_one, num_two)
  answer = num_one.to_i + num_two.to_i
  result(answer)
end

def subtract(num_one, num_two)
  answer = num_one.to_i - num_two.to_i
  result(answer)
end

def multiply(num_one, num_two)
  answer = num_one.to_i * num_two.to_i
  result(answer)
end

def divide(num_one, num_two)
  answer = num_one.to_i / num_two.to_i
  result(answer)
end

def power(num_one, num_two)
  answer = num_one.to_i ** num_two.to_i
  result(answer)
end

def root(num_one, num_two)
  answer = Math.sqrt(num_one.to_i)
  result(answer.to_i)
end

def result(answer)
    puts "That equals: " + answer.to_s
    puts "Would you like to perform another operation on " + answer.to_s
    puts 'y/n'
    continue_input = gets.chomp!
    if continue_input == 'y'
      prompt(answer.to_s)
    else
      puts "Thanks for using Quin's Kick_Hash Calculator!"
    end
end

intial_prompt()




