# yes lets

puts " Do you want to play Yes Let's?"
print "y/n"
input = gets.chomp

awesome_things = []
counter = 0
while input == 'y' 
	puts " Ok we're playing"
	
	puts "what do you want to do?"
	awesome_thing = gets.chomp!

	awesome_things << awesome_thing
	counter = counter + 1

	break if counter == 5

	puts " Do you STILL want to play Yes Let's?"
	input = gets.chomp!
end


# this print with a carriage return of the string inside of the array
puts awesome_things.inspect
#this print a string without a carriage return of the string inside the array.
print awesome_things.inspect

