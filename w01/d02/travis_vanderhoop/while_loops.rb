# counter =0
# something = 10

# while counter < something do
#   puts "Cool, dude"
#   counter = counter + 1
# end

awesome_things=[]
puts "Do you wanna play 'Yes let's'?"
print "y/n"
input = gets.chomp
counter =0

while input == "y"
  puts "Okay, we're gonna play. What do you want to do?"
  awesome_thing = gets.chomp
  awesome_things << awesome_thing
  counter +=1
  if counter == 5
    puts "You've played 5 times. I'm sick of playing."
    break
  end
  puts "Do you STILL want to play????"
  input = gets.chomp
end

#this is going to print a string with a carriage return of the array
puts awesome_things.inspect
#this is going to print a string without a carriage return of the
print awesome_things.inspect
#print a string of the inspected string of the array
p awesome_things.inspect
#printing and inspecting
p awesome_things
