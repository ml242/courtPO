puts "What is the temperature? Please type a whole number without a decimal!"
temp = gets.chomp


if temp != temp.to_i.to_s && temp % 1 != 0
  puts "Sorry, that is not a whole number!"
else
  temp = temp.to_i
  if temp <= 40
    puts "You should wear a heavy coat and a scarf!"
  elsif temp > 40 && temp <= 60
    puts "You should wear a jacket"
  elsif temp > 60 && temp <= 89
    puts "You should go out and have fun!"
  else temp < 90
    puts "Wow it's hot out! Wear as little as possible!"
  end
end