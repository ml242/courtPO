# Yes Let's
awesome_things = []
counter = 0

puts "Do you want to play let's yes"
print "y/n"
input = gets.chomp!.downcase

while input == 'y' && counter < 5
  puts "ok we're playing"
  counter +=1




    puts "what do you wanna do?"
  awesome_thing = gets.chomp!


  awesome_things << awesome_thing


  puts "do you still wanna play?"
  input = gets.chomp!

end

puts("I'm tired, 5 is enough")
p awesome_things
