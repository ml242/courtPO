=begin
requirements of calculator:

user choose desired operation
user input values
user views result

user given menu of operations
user able to choose operation from menu
user able to enter numbers to be used by operation
quit option should be one of the options in the menu

PHASE 2
add advanced arithmatic

PHASE 3
????

=end

#-------------------------------------------------------

#VARIABLES & OBJECTS
functions = {
"a" => "addition",
"s" => "subtraction",
"m" => "multiplication",
"d" => "division",
#"e" => "exponentation",
"p" => "raise to the nth power",
"r" => "take the nth root",
#"c" => "clear the memory"
}

action_descriptions = {
"a" => "Please input a value to add:",
"s" => "Please input a value to subtract:",
"m" => "Please input a value to multiply by:",
"d" => "Please input the divisor:",
#"e" => "exponentation",
"p" => "Please input the value for the exponent:",
"r" => "Please input the degree of the root:",
#"c" => "Are you sure you want to clear the memory?"
}


=begin
working on a way to simplify the code and properly handle nth roots

def calc(num1, num2)
  num1
end


def root(n)

end
=end


operations = {
  "a" => :+,
  "s" => :-,
  "m" => :*,
  "d" => :/,
  #"e" => "exponentation",
  "p" => :**,
  #{}"r" => :** 1/,
  #"c" => operation = nil
}

operations_s = {
  "a" => "+",
  "s" => "-",
  "m" => "*",
  "d" => "/",
  #"e" => "exponentation",
  "p" => "**",
  #{}"r" => :** 1/,
  #"c" => operation = nil
}

#METHODS

def two_input_calc(input1, input2, math_func)
  result = input1 math_func input2
  puts result
end


#PROGRAM

puts "Welcome to your calculator!"

#enter number
puts "Please enter a number:"
first_num = gets.chomp!     #revisit this line to see if I need ! or should get rid of it
primary_num = first_num.to_f

#if this is run in another place besides the terminal a puts primary_num should be placed here

#select a function
functions.each {|abreviation, description| puts "#{abreviation} for #{description}"}
puts "\nFrom the preceeding menu, please select the operation you would like to perform:"

operation = gets.chomp!


## Need to evaluate input value with statement like 'while x NOT IN array of accpetable inputs ask for proper input'

#input the other value required for the calculation
puts action_descriptions[operation]

second_num = gets.chomp!
secondary_num = second_num.to_f

#I was trying to get fancy
puts ""
puts "Is this the expression that you would like evaluated?"
puts "#{primary_num} " + operations_s[operation] + " #{secondary_num} ="
puts ""
puts "Input y to evaluate and n to clear and retry."

execute = gets.chomp!

until execute == "y" || execute == "n"
  puts "Please input y or n."
  execute = gets.chomp!
end

if execute == "y"
    if operation == "a"
      puts primary_num + secondary_num
    elsif operation == "s"
      puts primary_num - secondary_num
    elsif operation == "m"
      puts primary_num * secondary_num
    elsif operation == "d"
      puts primary_num / secondary_num
    elsif operation == "p"
      puts primary_num ** secondary_num
    else
      puts primary_num ** (1/secondary_num)
    end
else
  puts "Your calculation has been cancelled."
end


if execute == "y"
  2_input_calc(pirmary_num, secondary_num, operations[operation])




#I tried to avoid using case or if statements for this because it is long and ugly but its getting too late and I can't figure out how to get the operations hash to call the symbols/methods correctly




#MY CONCLUSIONS AND SUMMARY NOTES

#this behaves weirdly with imaginary numbers, etc and those answers would need to be properly coded
#I also need to add the Math module to get all of the math functions but I would like to figure out how to put these into a hash and then get the correct syntax with this from a method that I create or in some other way but I'll work on this tomorrow.
#I also want to add a clear memory function (e.g. reset) and I want to print the expression that will be evaluated and have the user confirm it











