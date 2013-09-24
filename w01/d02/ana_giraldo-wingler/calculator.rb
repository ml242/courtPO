puts "Welcome to Ana's CALCULATURD. Here is a list of all the things you can do with me:"
puts "+ to add"
puts "- to subtract"
puts "* to multiply"
puts "/ to divide"
puts "First, pick a number."

n1 = gets.chomp!

puts "Now, Pick another number."

n2 = gets.chomp!

puts "Great. Now pick an operation."
op = gets.chomp!

print n1.to_i + op + n2.to_i