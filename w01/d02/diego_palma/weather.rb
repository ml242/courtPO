
puts "What's the temperature like today?"
temperature = gets.chomp!
counter = 0

while temperature != "0" && temperature.to_i == 0 && counter < 2
  puts("I don't know what you mean.")
  puts("Please try again.")
  puts "What's the temperature like today?"
  temperature = gets.chomp!
  counter += 1
end

while temperature != "0" && temperature.to_i == 0 && counter >= 2 && counter < 3
  puts("I still don't know what you mean.")
  puts("Come on...")
  puts "What's the temperature like today?"
  temperature = gets.chomp!
  counter += 1
end

while temperature != "0" && temperature.to_i == 0 && counter >= 3
  puts("Do you know how to read?")
  puts("I'm getting tired of this...")
  puts "Come on... What's the temperature like today?"
  temperature = gets.chomp!
  counter += 1
end

if  temperature.to_i < 60
  puts("Don't forget to take a jacket with you")
elsif temperature.to_i > 60
   puts("Get naked!")
end




