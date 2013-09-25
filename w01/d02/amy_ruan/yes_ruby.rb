awesome_things = [  ]

puts "Do you wanna play yes lets"
print "y/n : "
input = gets.chomp!
counter = 0
while input == 'y'  do
    counter += 1
    break if counter > 5
    puts "ok we're playing...."
    puts "What do you want to do? "
    awesome_thing = gets.chomp!
    awesome_things << awesome_thing
    puts "Do you still wanna play yes lets??"
    input = gets.chomp!
end

puts awesome_things.inspect