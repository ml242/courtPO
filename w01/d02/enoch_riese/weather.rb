while 2 < 3
  puts "What is the temperature?"
  temp = gets.chomp!
  if temp == "stop"
    break
  elsif temp.to_i.to_s != temp
    puts "actually, I need a number"
  elsif temp.to_i <= 60
    puts "Wear a jacket!"
    if temp.to_i <= 50
      puts "and a scarf!"
    end
  elsif temp.to_i >=61
    puts "Go have fun!"
  else
    puts "actually, I need a real number"
  end
end
