puts "What is the current temperature outside?"

current_temp = gets.chomp!
temp_int = current_temp.to_i

comment = {
  "cold" => "You should wear a jacket.",
  "warm" => "Wow it's nice out! Go have some fun!"
}


if current_temp == "0"
    puts comment["cold"]
  elsif
    until temp_int != 0 || current_temp == "0"
      puts "Please enter the temperature as a number in degrees F."
      current_temp = gets.chomp!
    end
  elsif temp_int < 60
    puts comment["cold"]
  elsif temp_int >=60
    puts comment["warm"]
  else
    puts "what the heck did you say?!?"
  end







=begin

puts "You should wear a #{warm_weather_clothing}."

# this was to check if the user input is an integer
Integer(gets) rescue puts "foo"
              rescue nil




end
if current_temp != Integer
  puts
end

if current_temp.to_i < 60
  puts "You should wear a #{warm_weather_clothing}."
else
  puts "Wow its nice out!  Go have some fun!"
end

=end






