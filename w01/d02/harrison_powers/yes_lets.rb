counter = 0
awesome_things = []

puts "Do you wanna play Yes Let's?"

print "y/n "

input = gets.downcase.chomp!

while input == 'y' && counter < 5 do
  counter += 1
  puts "ok we're playing..."

  puts "What do you wanna do?!"
  awesome_thing = gets.chomp!


  awesome_things << awesome_thing

  puts "Do you STILL wanna play Yes Let's??"
  input = gets.chomp!
  puts "Too bad. The game is over." if counter == 5
end

p awesome_things