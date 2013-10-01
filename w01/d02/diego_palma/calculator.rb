puts "Welcome to 'La Calculadora'"
puts
puts "Please use '+' for addition, '-' for subtraction, '/' for division or '*' for multiplication. To close type 'End.'"
input = gets.chomp!

while input != 'End'
  if input == '+'
    puts 'Please type the first number, then press enter.'
    addone = gets.chomp
    puts 'Please type the second number, and press enter to get the answer'
    addtwo = gets.chomp
    puts
    print "Answer: "
    puts addone.to_f + addtwo.to_f
    puts
    puts  "Please use '+' for addition, '-' for subtraction, '/' for division or '*' for multiplication."
    puts "To close type 'End.'"
    input = gets.chomp
  end

   if input == '-'
    puts 'Please type the first number, then press enter.'
    subone = gets.chomp
    puts 'Please type the second number, and press enter to get the answer'
    subtwo = gets.chomp
    puts
    print "Answer: "
    puts subone.to_f - subtwo.to_f

    puts puts "Please use '+' for addition, '-' for subtraction, '/' for division or '*' for multiplication."
    puts "To close type 'End.'"
    input = gets.chomp
  end

     if input == '/'
    puts 'Please type the first number, then press enter.'
    divone = gets.chomp
    puts 'Please type the second number, and press enter to get the answer'
    divtwo = gets.chomp
    puts
    print "Answer: "
    puts divone.to_f / divtwo.to_f

    puts puts "Please use '+' for addition, '-' for subtraction, '/' for division or '*' for multiplication."
    puts "To close type 'End.'"
    input = gets.chomp
  end

     if input == '*'
    puts 'Please type the first number, then press enter.'
    multone = gets.chomp
    puts 'Please type the second number, and press enter to get the answer'
    multtwo = gets.chomp
    puts
    print "Answer: "
    puts multone.to_f * multtwo.to_f

    puts puts "Please use '+' for addition, '-' for subtraction, '/' for division or '*' for multiplication."
    puts "To close type 'End.'"
    input = gets.chomp
  end
end

