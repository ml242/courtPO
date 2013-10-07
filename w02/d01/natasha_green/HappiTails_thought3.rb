def ask(string)
	puts string
	gets.chomp!
end


INSTRUCTIONS = "
Welcome to HappiTails"
If coming to adopt an animal, type:
>adopt

If coming to drop off an animal, type:
>drop
"

while true
	input = Ask(INSTRUCTIONS)
	parameters = input/split(" ")
	operator = parameters.first
	
if operator == "adopt"
	adopt()
	
elsif operator == "drop"
	drop()
	
elsif 
	print " I cannot help you"
end


def adopt()
#user enter info
#user info saved in array to be displayed
#user picks from a list of animals to adopt
#animal are added to array of animals to be  used again
#animals are displayed for next user
end

def drop()
#user enters info
#user info saved in array to be displayed
#user inputs data about animal
#animal is added to list
#user is thanked for dropping animal off