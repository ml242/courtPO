puts "What is the temperature?"
temp = gets.chomp
temp_int = temp.to_i


if temp_int != 0
  if temp_int < 30
    puts "Wear your gloves and boots as well!"
  elsif temp_int < 60
    puts "Wear a jacket before you have fun"
  elsif temp_int >90
    puts "Have fun but wear your sunglasses as well"
  else temp_int >80
      puts "Have fun"
  end
else
  if temp != 0.to_s
  puts "Sorry I don't know what you mean"
  end
end