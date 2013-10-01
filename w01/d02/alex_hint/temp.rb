puts "What is the temperature?"
degrees_str = gets.chomp!
degrees = degrees_str.to_i

=begin
until (temp == "0") || ((temp.to_i.is_a? Integer) && temp.to_i != 0)
  puts "Put in a number!"
  temp = gets.chomp
end
=end

while degrees == 0 && degrees_str != "0"
  puts "Please write it in numbers"
  degrees_str = gets.chomp!
  degrees = degrees_str.to_i
end


if degrees < 60
    puts "Wear a jacket! NOW!"
elsif degrees >= 60 && degrees <= 80
    puts "Wear a light jacket"
else degrees > 80
    puts "Wear a t-shirt"
end




