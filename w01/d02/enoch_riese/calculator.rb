# You will be building a calculator. A calculator can perform multiple
# arithmetic operations. Your function should allow the user to choose
# which operation is expected, enter in the values to perform the
# operation on, and ultimately view the result.

# A user should be given a menu of operations A user should be able to
# choose from the menu
# A user should be able to enter numbers to perform
# the operation on
# A user should be shown the result This process should
# continue until the user selects a quit option from the menu

# Phase 1
# Calculator functionality Calculator should be able to do basic
# arithmetic (+,-, *, /)

# Phase 2
# Advanced Calculator functionality Calculator should be able to do
# basic arithmetic (exponents, square roots)

# Phase 3
# User should be given a menu of Calculator functionality User should be
# able to choose indented functionality
quit = false
while quit != true
  puts " "
  puts "What would you like to do?"
  print "(add, subtract, multiply, divide, raise to a power, square root, quit) "
  func = gets.chomp!

  until func == "add" || func == "subtract" || func == "multiply" || func == "divide" || func == "raise to a power" || func == "square root" || func == "quit"
    puts "I'm sorry, try again"
    print "add, subtract, multiply, divide, raise to a power, square root, quit) "
    func = gets.chomp!
  end

  if func == "quit" then
    quit = true
    break
  else puts "What numbers would you like to #{func}?"
  end

  if func == "add" then
    print "for x+y, type x y "
  elsif func == "subtract" then
    print "for x-y, type x y "
  elsif func == "multiply" then
    print "for x*y, type x y "
  elsif func == "divide" then
    print  "for x/y, type x y "
  elsif func == "raise to a power" then
    print "for x^y, type x y "
  elsif func == "square root" then
    print "for root x, type x "
  end

  nums = gets.chomp!.split
  x = nums [0]
  y = nums [1]

  until (x.to_i.to_s == x || x.to_f.to_s == x || x == "quit") && (y.to_i.to_s == y || y.to_f.to_s == y || y == nil)
    puts "I'm sorry, try again. I need numbers"
    print "(x y) "
    nums = gets.chomp!.split
    x = nums[0]
    y = nums[1]
  end

  if x == "quit" then
    quit = true
    break
  end

  if func == "square root" then
    puts "finding the square root of #{x}"
  elsif func == "raise to a power"
    puts "raising #{x} to the #{y} power"
  else
   puts "#{func.delete("e")}ing #{x} and #{y}"
  end

  if func == "add" then
    puts "#{x} + #{y} = #{x.to_f + y.to_f}"
  elsif func == "subtract" then
    puts "#{x} - #{y} = #{x.to_f - y.to_f}"
  elsif func == "multiply" then
    puts "#{x} * #{y} = #{x.to_f * y.to_f}"
  elsif func == "divide" then
    puts "#{x} / #{y} = #{x.to_f / y.to_f}"
  elsif func == "raise to a power"
    puts "#{x}^#{y} = #{x.to_f ** y.to_f}"
  elsif func == "square root"
    puts "the square root of #{x} is " << Math.sqrt(x.to_f).to_s
  end
end