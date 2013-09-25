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

operations = {
  "a" => +,
  "s" => -,
  "m" => *,
  "d" => //,
  #"e" => "exponentation",
  "p" => **,
  "r" => ** 1/,
  #"c" => operation = nil
}



#METHODS




#PROGRAM

puts "Welcome to your calculator!"

#enter number
puts "Please enter a number:"
primary_num = gets.chomp!     #revisit this line to see if I need ! or should get rid of it

#if this is run in another place besides the terminal a puts primary_num should be placed here

#select a function
functions.each {|abreviation, description| puts "#{abreviation} for #{description}"}
puts "\nFrom the preceeding menu, please select the operation you would like to perform:"

operation = gets.chomp!


#input the other value required for the calculation
puts action_descriptions[operation]

secondary_num = gets.chomp!

#
operations.puts {|math| puts primary_num math secondary_num}
puts "Is this the expression you want evaluated?"
puts "Input y to evaluate and n to clear and retry."

execute = gets.chomp!

while execute != "y" || "n" do
  puts "Please input y or n."
  execute = gets.chomp!
end

if execute == "y"
  result = primary_num operations[operation] secondary_num
  puts result
else
  puts "Your calculation has been cancelled."
end



# a for addition
# s for subtraction
# m for multiplication
# d for division
# #e for exponentation
# p to raise to the nth power
# r to take the nth root
# c to clear the memory


















