# calculator.rb - The most advanced and feature rich
# calulating machine. Ever.. Well, almost.

# define menu functions
def Simple_Print_Menu
  puts "\n\n\n                       Ruby Calculator\n\n"
  puts "             Enter type of calculation to perform\n\n"
  puts " Enter 1-7:\n\n"
  puts "  1. Addition"
  puts "  2. Subraction"
  puts "  3. Multiplication"
  puts "  4. Division"
  puts "  5. Square"
  puts "  6. Square Root"
  puts "  7. Exit Simple Calculator\n\n"
end

def Operator_Print_Menu
  puts "\n\n\n              Welcome to Kick" + "\#" + " Calculator Program!"
  puts "\n        Select what type of calculator your would like: \n\n"
  puts "     -- Choose '1' for Operator Type (+,-,*,/)"
  puts "     -- Choose '2' for Simple Type"
  puts "     -- Choose 'Q' to Quit Program\n\n\n"
  print "> "
end

# collects arguments for the dumb calculator
def Get_Args(calc_args, operator)
  print " Enter 1st numbers to #{operator}: "
  calc_args << gets.to_f
  print " Enter next: "
  calc_args << gets.chomp.to_f
  print "\n\n\n"
end

# Stay in program until user wants to quit
dumbness = 0
while dumbness != 3
  # find out what calculator user wants
  Operator_Print_Menu()
  dumbness = gets.downcase.chomp
  # start Operator type calculator
  if dumbness == "1"
    op_type = 0
    while op_type != "q"
      # get user function
      puts "\nReady. Enter problem without spaces. "
      puts " ex. 7+3, 54-56.77, 6.2*7.1, 7/2, 6^, sqrt9, or 'Q' to Quit"
      print "\n> "
      vars = gets.downcase.chomp
        # if adding, add up and print
        if vars.include?("+")
          vArray = vars.split("+")
          answer = vArray[0].to_f + vArray[1].to_f
          puts "= " + answer.to_s
        # if subtracting, ...
        elsif vars.include?("-")
          vArray = vars.split("-")
          answer = vArray[0].to_f - vArray[1].to_f
          puts "= " + answer.to_s
        # if multiplying, ...
        elsif vars.include?("*")
          vArray = vars.split("*")
          answer = vArray[0].to_f * vArray[1].to_f
          puts "= " + answer.to_s
        # if dividing, ...
        elsif vars.include?("/")
          vArray = vars.split("/")
          answer = vArray[0].to_f / vArray[1].to_f
          puts "= " + answer.to_s
        # squaring
        elsif vars.include?("^")
          vArray = vars.split("^")
          answer = vArray[0].to_f * vArray[0].to_f
          puts "= " + answer.to_s
        elsif vars.include?("sqrt")
          vArray = vars.split("sqrt")
          answer = Math.sqrt(vArray[1].to_f)
          puts "= " + answer.to_s
        elsif vars == "q"
          break
        else
          puts "Do not recognize operator. Try again"
        end
    end
  # start Simple type calculator
  elsif dumbness == "2"
    # print menu
    Simple_Print_Menu()
    # init variable
    calc_type = 0
    calc_args = []
    # start simple calc loop, choose 7 to quit
    while calc_type != 7
      calc_type = gets.to_i
      case calc_type
      # Calculate functions
      when 1
        operator = "Add"
        Get_Args(calc_args, operator)
        answer = calc_args[0] + calc_args[1]
        puts calc_args[0].to_s + " + " + calc_args[1].to_s + " = " + answer.to_s
      when 2
        operator = "Subtract"
        Get_Args(calc_args, operator)
        answer = calc_args[0] - calc_args[1]
        puts calc_args[0].to_s + " - " + calc_args[1].to_s + " = " + answer.to_s
      when 3
        operator = "Multiply"
        Get_Args(calc_args, operator)
        answer = calc_args[0] * calc_args[1]
        puts calc_args[0].to_s + " X " + calc_args[1].to_s + " = " + answer.to_s
      when 4
        operator = "Divide"
        Get_Args(calc_args, operator)
        answer = calc_args[0] / calc_args[1]
        puts calc_args[0].to_s + " / " + calc_args[1].to_s + " = " + answer.to_s
      when 5
        operator = "Square"
        print " Enter number to Square: "
        calc_args << gets.chomp.to_f
        print "\n\n\n"
        answer = calc_args[0] * calc_args[0]
        puts calc_args[0].to_s + "^2 " + "= " + answer.to_s
      when 6
        operator = "Sqrt"
        print " Square Root of: "
        calc_args << gets.chomp.to_f
        print "\n\n\n"
        answer = Math.sqrt(calc_args[0])
        puts "Square root of " + calc_args[0].to_s + " = " + answer.to_s
      else
        puts "Invalid Entry! Choose 1, 2, 3, 4, 5, 6, or 7 to quit"
      end
      Simple_Print_Menu()
      calc_args = []
    end
    elsif dumbness == "q"
      break;
    else
      puts "Invalid Entry! Choose 1, 2, or Q to quit\n\n"
  end
end