puts "Welcome to Calculator."
puts "Would you like to calculate something?"
puts "y/n"
firstIn = gets.chomp!.downcase

if firstIn == "n"
  puts "That's too bad. Bye!"
end
if firstIn != "n" && firstIn != "y"
  puts "I don't get it. Shutting down."
end

while firstIn == "y"

