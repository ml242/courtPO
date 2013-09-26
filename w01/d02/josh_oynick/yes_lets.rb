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

counter = 0
plays = 5

puts "Do you wanna play Yes Let's?"
# this is displaying `y/n` to prompt the user to
# enter a single character: y or n
print "y/n "

input = gets.downcase.chomp!

while input == 'y' && counter < plays do
  puts "ok we're playing..."

  puts "What do you wanna do?!"
  awesome_thing = gets.chomp!

  awesome_things << awesome_thing

  counter +=1

  if counter == 5
    puts "I think you've done enough."
  else
  puts "Do you STILL wanna play Yes Let's??"
  input = gets.chomp!
end

end

# this print a string with a carriage return of the array
puts awesome_things.inspect
# this print a string without a carriage return of the array
print awesome_things.inspect
# print a string of the inspected string of the array
p awesome_things.inspect
# printing and inspecting
p awesome_things