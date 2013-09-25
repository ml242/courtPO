puts "Welcome to Ana's CALCULATURD. Here is a list of all the things you can do with me:"
puts "+ to add"
puts "- to subtract"
puts "* to multiply"
puts "/ to divide"

puts "Pick one, then press enter. To quit, type 'end.'"
op = gets.chomp!

while op != 'end'

  if op != "+"
    or op != "-"
    or op != "*"
    or op != "/"
  puts "Use + to add, - to subtract, * to multiply, and / to divide."
else

if op == "+"
  puts "Eggsellent. Now, pick your first number and press enter."

n1 = gets.chomp!

puts "Now, Pick another number."

n2 = gets.chomp!

puts "Great. Now pick an operation."
op = gets.chomp!

print n1 + op + n2