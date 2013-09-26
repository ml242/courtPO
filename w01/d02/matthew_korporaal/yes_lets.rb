# Yes Let's! The game continues...

#initialize variables
awesome_things = []
count = 0
max_count = 5

# Does user really want to play this game? 
puts "Do you wanna play Yes Let's?"
# this is displaying `y/n` to prompt the user to
print "y/n "

# Get user input
input = gets.downcase.chomp!

# While user chooses 'y' and they haven't played 5X, 
# the game continues..
while input == 'y' && count < max_count do
  # Game on!
  puts "ok we're playing..."
  puts "What do you wanna do?!"

  # Get user input
  awesome_thing = gets.chomp!
  awesome_things << awesome_thing

  # Does user still wanto continue?
  # -Get answer
  # -Increment count so while can test if at max plays
  puts "Do you STILL wanna play Yes Let's??"
  input = gets.downcase.chomp!
  count += 1

  # If count is 5, then happy hour time
  if count == 5
    puts "\nSorry, I don't have enough time. Try later.\n"
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
