# while something_is_true do

# end

# counter = 0
# something = 10

# while counter < something do
#   puts  "cool stuff"
#   counter += 1
# end

# puts "Do you wanna play Yes Let's?"
# print "y/n"

# input = gets.chomp!

# while input == 'y' do
#   puts "ok we're playing..."

#   puts "What do you wanna do?!"
#   awesome_thing = gets.chomp!

awesome_things = []

puts "Do you wana play Yes Let's?"
print "y/n "

input = gets.chomp!

while input == 'y' do
  puts "ok we're playing..."

  puts "what do you wanna do?!"
  awesome_thing = gets.chomp!

  awesome_things << awesome_thing

  puts "Do you STILL wanna play Yes Let's??"
  input = gets.chomp!
end

# this is going to print a string with a carriage return of the array
puts awesome_things.inspect
# this is going to print a string w/out a carriage return
print awesome_things.inspect
p awesome_things.inspect
p awesome_things

