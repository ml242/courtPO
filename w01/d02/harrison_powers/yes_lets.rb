counter = 0
awesome_things = []

puts "Do you wanna play Yes Let's?"

print "y/n "

input = gets.downcase.chomp!

while input == 'y' && counter < 5
  counter += 1
  puts "ok we're playing..."

  puts "What do you wanna do?!"
  awesome_thing = gets.chomp!


  awesome_things << awesome_thing

  if counter < 5
  	puts "Do you STILL wanna play Yes Let's??"
    input = gets.chomp!
  else
  	puts
    puts "Fun game. It is now time to go to say goodbye."
  end
end
puts
puts "Here is a transcript of your game:"
p awesome_things