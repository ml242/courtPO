
puts "Calc App"
# A user should be given a menu of operations

puts "Would you like to add, subtract, multiply divide, or quit?"
puts "type '+' to add"
puts "type '-' to subtract"
puts "type '*' to multiply"
puts "type '/' to divide"
puts "type 'q' to quit"

# A user should be able to choose from the menu

menu_selection = gets.chomp!

#the quit command was easiest, so I decided to write it first
if menu_selection == "q"
  puts "Peace out."


#   if choose add

elsif (menu_selection == '+' ||  menu_selection == '-' || menu_selection == '*' || menu_selection == '/')

number_set = []
# i think the values that a user inputs should be in an array...

puts "Please input the values for the chosen operation"
puts "Please press ENTER after each number value"

num.to_f = gets.chomp!  # converts any number value into a float

puts "Input 'done' when you are finished, or input another value"

number_set << num

elsif num == 'done'

end


#   enter variable 1
#   enter variable 2
#   do you have another variable?
#     if yes keep asking
#       if no provide result

#         back to main menu


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
# This process should continue until the user selects a quit option from the menu


# quit
#functions
#balance should return so we can keep operating
#if they don't a number than ask for a repeat