# Title
print "Calculator\n"
# promts user to enter first number then pulls the string into an integer.
print "Enter a number:"
first_number = gets.to_i
# promts user to enter operation
print "Now Enter (+|-|/|*|^): "
operation = gets.chomp
# same as first number.
print "Enter the next number: "
second_number = gets.to_i

case operation
  when '+'
        answer = first_number + second_number

  when '-'
        answer = first_number - second_number

  when '/'
# The if statment checks if any of the two numbers are 0 to stop the program from crashing
        if first_number == 0 || second_number == 0
            print "Sorry cannot divide by 0.\n"
        else
            answer = first_number / second_number
        end

    when '*'
        answer = first_number * second_number

    when '^'
        answer = first_number ** second_number

# Else is the same as default, incase user enters somehting not in the range it will throw out an error message
  else
    print "Enter the correct operation!\n"
end
# Prints answer
print "Your answer is #{answer}.\n"
