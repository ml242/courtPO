puts "What is the temperature?"
temperature = gets.chomp

if temperature.to_i.to_s != temperature
	puts "Does not compute, enter a whole number."

else
	temperature = temperature.to_i
	if temperature >=90
		puts "Don't forget your bathing suit!"
	elsif temperature <= 90 && temperature >=60
		puts "Go have fun!"
	elsif temperature <= 60 && temperature >= 50
		puts "Wear a jacket before you have fun."
	elsif temperature <= 50 && temperature >= 40
		puts "Don't forget the long underwear"
	elsif temperature <= 40
		puts "maybe you should just stay inside today"
	end
end