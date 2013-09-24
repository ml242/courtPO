puts "Do you want to know what to wear? (Y/N)"
  ans = gets.chomp!

  while ans == "Y" do

puts "What's the temperature right now?"
    temp = gets.chomp!

    if temp.to_i == 0 && temp != "0"
        puts "Make sure you're writing a number, please:"
        temp = gets.chomp!
      end

    if temp.to_i < 40
          puts "You should wear a winter coat."
      elsif temp.to_i >= 40 && temp.to_i <= 60
          puts "You should wear a jacket."
      else
          puts "You'll be fine in a t-shirt."
    end

    puts "Do you want to know what to wear? (Y/N)"
  ans = gets.chomp!

  end