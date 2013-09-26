awesome_things = [] #create empty array
puts "do you wanna play yes let's?"
puts "y/n"
input = gets.chomp!.downcase

if input == "n"
  puts "whatever bye"
end

counter = 0

while input == "y" && counter < 5 #begin loop
  puts "ok we're playing"

  puts "what do you want to do"
  awesome_thing = gets.chomp! #gets input

  awesome_things << awesome_thing #stores input into awesome_things array

  puts "do you still want to play?"
  input = gets.chomp! #option to break out of loop

  counter += 1
end

puts "the game is over now"
puts "would you like to see the things you like to do"
puts "y/n"
answer = gets.chomp!.downcase

if answer == "n"
  puts "whatever i don't care"
end

if answer == "y"
  awesome_things.each { |x| puts "#{x}"}
  #prints each item in the array
end


