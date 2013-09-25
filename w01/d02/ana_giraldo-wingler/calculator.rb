puts "Welcome to Ana's CALCULATURD. Here is a list of all the things you can do with me:"
puts "+ to add"
puts "- to subtract"
puts "* to multiply"
puts "/ to divide"

puts "Use + to add, - to subtract, * to multiply, and / to divide. Pick one, then press enter. To quit, type 'quit.'"
op = gets.chomp!

while op != 'quit'

if op == "+"
  puts "Eggsellent. Now, pick your first number and press enter."
  n1a = gets.chomp!

  puts "Pick a second and press enter again."
  n2a = gets.chomp!

  puts #{n1a} + #{n2a} is:
  puts n1a.to_f + n2a.to_f
  end

if op == "-"
  puts "Eggsellent. Now, pick your first number and press enter."
  n1s = gets.chomp!

  puts "Pick a second and press enter again."
  n2s = gets.chomp!

  puts #{n1s} - #{n2s} is:
  puts n1s.to_f - n2s.to_f
  end

  if op == "*"
  puts "Eggsellent. Now, pick your first number and press enter."
  n1m = gets.chomp!

  puts "Pick a second and press enter again."
  n2m = gets.chomp!

  puts #{n1m} * #{n2m} is:
  puts n1m.to_f * n2m.to_f
  end

  if op == "/"
  puts "Eggsellent. Now, pick your first number and press enter."
  n1d = gets.chomp!

  puts "Pick a second and press enter again."
  n2d = gets.chomp!

  puts #{n1a} / #{n2a} is:
  puts n1d.to_f / n2d.to_f
  end
puts "Pick another operation. Use + to add, - to sutract, * to multiply, and - to divide, or type 'end' to quit."
end