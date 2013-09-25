#Yes let's
  awesome_things = [ ]

5.times do
puts "We are playing 'Yes, Let's.' What would you like to do?"

awesome_thing = gets.chomp!
awesome_things << awesome_thing

end

# p awesome_things
puts "You would like to  #{ awesome_things}"