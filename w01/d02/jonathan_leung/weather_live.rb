#TODO, make it so that it starts from the smaller numbers and uses ranges

puts "What is the weather like?"
degrees_str = gets.chomp!
# "food"
degrees = degrees_str.to_i


is_english_word = degress_str != "0"

while degrees == 0 && is_english_word



if degrees > 80
  puts "It's hot in here, wear some shorts!"
elsif degrees > 60
  puts "It's decently warm in here"
else
  puts "burr, it's cold! Wear layers!"
end
