puts "What is the weather like?"
degrees_str = gets.chomp!
degrees = degrees_str.to_i    

if degrees > 80
  puts "It's hot in here, wear some shorts!"
elsif degrees > 60
  puts "It's decently warm, wear something"
else
  puts "burr, it's cold! Wear layers!"
end
