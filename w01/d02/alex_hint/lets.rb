awesome_things = []

puts "Do you wanna play Yes Let's"
print "y/n   "

input = gets.chomp!

counter = 0

while input == 'y' && counter < 5
  puts "ok we're playing..."

  puts "What do you want to do?!"
  awesome_thing = gets.chomp!

  awesome_things << awesome_thing

  counter += 1

  if counter < 5
   puts "Do you STILL wanna play Yes Let's"
   input = gets.chomp!
  else
     puts "Bye"
   end



end

p awesome_things


