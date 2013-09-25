puts "Do you wanna play Yes Let's"
puts "y/n"

input = gets.downcase.chomp!
awesome_things = []
i = 0

while input == "y" && i < 5 do
  puts "ok we're playing!"

  puts "What do you want to do?"
  awesome_thing = gets.chomp!

  awesome_things << awesome_thing

  if i < 4
    puts "Do you STILL want to play Yes Let's??"
    input = gets.chomp!
  else
    puts "Game over. You can only play a maximum of 5 times!"
  end

  i += 1
end

p awesome_things