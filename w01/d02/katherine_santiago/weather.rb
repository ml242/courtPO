puts "Do you want to know what to wear outside? Answer y/n."
ans = gets.downcase.chomp!

while ans == "y" do
  puts "What's the temperature?"
  temp = gets.chomp!

  if temp.to_i == 0 && temp != "0"
    puts "Hey, write a number temperature please."
    temp = gets.chomp!
  end

  if temp.to_i < 40
    puts "You should wear a winter coat."
    elsif (temp.to_i >= 40) && (temp.to_i <= 60)
      puts "You should wear a light jacket."
    else
      puts "It's so warm outside; you'll be fine in a t-shirt!"
  end

puts "Do you STILL want to know what to wear outside? Answer y/n."
ans = gets.chomp!
end