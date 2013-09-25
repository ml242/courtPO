# while something_is_true do

# end

# counter = 0
# something = 10

# while counter < something do
#  puts "cool stuff"
#  # counter += 1
#  counter = counter + 1
# end

# Yes Let's!

awesome_things = []

puts "Do you wanna play Yes Let's?"
# this is displaying `y/n` to prompt the user to
# enter a single character: y or n
print "y/n "

input = gets.downcase.chomp!

counter = 0

while input == 'y' && counter < 5 do
  puts "ok we're playing..."
  counter = counter + 1

  if counter == 5
    puts "Our time is up here."

  else

  puts "What do you wanna do?!"
  awesome_thing = gets.chomp!


  awesome_things << awesome_thing

  puts "Do you STILL wanna play Yes Let's??"
  input = gets.chomp!
end
end