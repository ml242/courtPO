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
"c" => "clear the memory"
}



#METHODS




#PROGRAM

puts "Welcome to your calculator!"

#enter number
puts "Please enter a number:"
primary_num = gets.chomp!     #revisit this line to see if I need ! or should get rid of it

#if this is run in another place besides the terminal a puts primary_num should be placed here


functions.each {|abreviation, description| puts "#{abreviation} for #{description}"}
puts "\nFrom the preceeding menu, please select the operation you would like to perform:"

#operation -- if arithmetic then prompt for another number and if exponentation or




# a for addition
# s for subtraction
# m for multiplication
# d for division
# #e for exponentation
# p to raise to the nth power
# r to take the nth root
# c to clear the memory


















