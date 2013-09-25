awesome_things = []

counter = 0

puts "Do you want to play Yes Let's?"
print "y/n"

input = gets.chomp!

while input == "y" && counter <= 5 do
  puts "ok we're playing..."

  puts "What do you wnat to do?!?"
  awesome_thing = gets.chomp!

  awesome_things << awesome_thing

  puts "Do you STILL want to play Yes Let's??, currently your story says" # add more here
  input = gets.chomp!
  counter += 1
end

# this print a string with a carriage return of the array
# puts awesome_things.inspect
# this print a string without a carriage return of the array
#print awesome_things.inspect
# print a string of the inspected string of the array
#p awesome_things.inspect
# printing and inspecting
#p awesome_things