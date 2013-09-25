#Yes let's
  awesome_things = []

puts "Do you want to play Yes Let's "
print "y/n\n" # if you enter y or n the system it knows what it is.

input = gets.chomp!


 if input == 'y'

    puts "ok we're playing. your first thing is"

    puts "what do yo wanna do?!"
    awesome_thing = gets.chomp!

    awesome_things << awesome_thing


  end

end


print "You would like to  #{p awesome_things}" #  the p shows everything that is in the array

# play with yes lets and put a counter such that it only goes for five times
#maybe we will only play it twicw
