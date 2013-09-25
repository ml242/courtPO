
def add(numbers_array)
  puts numbers_array.reduce(:+)
end

def subtract(numbers_array)
  puts numbers_array.reduce(:-)
end

def multiply(numbers_array)
  puts numbers_array.reduce(:*)
end

def divide(numbers_array)
  puts numbers_array.reduce(:/ )
end

def exponent(numbers_array)
  puts numbers_array.reduce(:**)
end

def sq_root(numbers_array)
  if numbers_array.length > 1
    puts "Only one number allowed for this function! Please re-enter only one number!"
  else
    numbers_array = numbers_array[0]
    puts Math.sqrt(numbers_array.to_f)
  end
end

puts "Hello what do you want to do today"
print "Add, Subtract, Multiply, Divide, Exponent, Sq_Root: "
option = gets.chomp!
option = option.downcase
puts option

numbers_array = [ ]
puts "Enter your numbers for option in order (put space only between digits!): "
numbers = gets.chomp
numbers_array << numbers.split(' ')
numbers_array.flatten!.collect! {|a| a.to_f}

if option == "add"
  add(numbers_array)
elsif option == "subtract"
  subtract(numbers_array)
elsif option == "multiply"
  multiply(numbers_array)
elsif option == "divide"
  divide(numbers_array)
elsif option == "exponent"
  exponent(numbers_array)
elsif option == "sq_root"
  sq_root(numbers_array)
else
  puts "Cannot compute!!"
end