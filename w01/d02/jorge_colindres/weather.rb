puts "What's the temperature (in degrees)?"
temp = gets.chomp!
temp_int = temp.to_i
wear = "You should wear a "
clothing = {
  "very cold" => "Wear two coats!",
  "pretty cold" => "coat!",
  "not too bad" => "jacket!",
  "nice weather" => "t-shirt!"
}


if temp == "0" || temp_int < 0
  puts clothing["very cold"]
elsif temp_int == 0
  puts "Sorry, I don't know what you mean."
elsif temp_int < 45
  puts wear + clothing["pretty cold"]
elsif temp_int < 65
  puts wear + clothing["not too bad"]
else temp_int
  puts wear + clothing["nice weather"]
end
