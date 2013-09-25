usr_inpt = 0
puts 'Welcome to THE RUBYlator'
puts

while usr_inpt != 'quit'

  puts 'Please select from the following menu: '
  puts
  puts 'Addition'
  puts 'Subtraction'
  puts 'Multiplication'
  puts 'Division'
  puts 'Square Root'
  puts 'Exponents'
  puts
  puts 'If you would like to quit, please input: quit'
  puts
  usr_inpt = gets.chomp.downcase
=begin
  until usr_inpt == (("quit") || ('addition') || ('subtraction') || ('multiplication') || ('division') || ('exponents') || ('square root'))
      puts 'Please put in a correct command'
      usr_inpt = gets.chomp!.downcase
  end
=end
  unless (usr_inpt == 'quit')
    #if either one of these input mactches, run the script below

  test = ['addition', 'subtraction', 'multiplication', 'division', 'exponents', 'square root'].include? usr_inpt

  if test == true
  puts 'Please enter the number you want to do MATH on: '
  puts
  first_number = gets.chomp!.to_i
  puts 'Please enter the number you want to do MATH with: '
  puts
  second_number = gets.chomp!.to_i
      if usr_inpt == 'addition'
          answer = first_number + second_number
          puts
          puts 'Your answer is ' + answer.to_s
      elsif usr_inpt == 'subtraction'
          answer = first_number - second_number
          puts
          puts 'Your answer is ' + answer.to_s
      elsif usr_inpt == 'multiplication'
          answer = first_number * second_number
          puts
          puts 'Your answer is ' + answer.to_s
      elsif usr_inpt == 'division'
          answer = first_number / second_number
          puts
          puts 'Your answer is ' + answer.to_s
      else usr_inpt == 'exponents'
          answer = first_number ** second_number
          puts
          puts 'Your answer is ' + answer.to_s

      end
    end
    if usr_inpt == 'square root'
            puts 'Please enter the number to squareroot: '
            puts
            number = gets.chomp!.to_i
            answer = Math.sqrt(number)
            puts
            puts 'Your answer is ' + answer.to_s
      end
  end
end





=begin
usr_inpt = 'addition'
puts 'Welcome to THE RUBYlator'
puts

while (usr_inpt != "quit") && (usr_inpt == (('addition') || ('subtraction') || ('multiplication') || ('division') || ('exponents') || ('square root')))
  puts 'Please select from the following menu: '
  puts
  puts 'Addition'
  puts 'Subtraction'
  puts 'Multiplication'
  puts 'Division'
  puts 'Square Root'
  puts 'Exponents'
  puts
  puts 'If you would like to quit, please input: quit'
  puts
  usr_inpt = gets.chomp!.downcase

    while (usr_inpt != "quit") && (usr_inpt == (('addition') || ('subtraction') || ('multiplication') || ('division') || ('exponents')))

    puts 'Please enter the number you want to do MATH on: '
    puts
    first_number = gets.chomp!.to_i
    puts 'Please enter the number you want to do MATH with: '
    puts
    second_number = gets.chomp!.to_i

      if usr_inpt == 'addition'
          answer = first_number + second_number
          puts
          puts 'Your answer is ' + answer.to_s
      elsif usr_inpt == 'subtraction'
          answer = first_number - second_number
          puts
          puts 'Your answer is ' + answer.to_s
      elsif usr_inpt == 'multiplication'
          answer = first_number * second_number
          puts
          puts 'Your answer is ' + answer.to_s
      elsif usr_inpt == 'division'
          answer = first_number / second_number
          puts
          puts 'Your answer is ' + answer.to_s
      else usr_inpt == 'exponents'
          answer = first_number ** second_number
          puts
          puts 'Your answer is ' + answer.to_s
      end

      if usr_inpt == 'square root'
            puts 'Please enter the number to squareroot: '
            puts
            number = gets.chomp!.to_i
            answer = Math.sqrt(number)
            puts
            puts 'Your answer is ' + answer.to_s
      end

    puts 'Please select from the following menu: '
    puts
    puts 'Addition'
    puts 'Subtraction'
    puts 'Multiplication'
    puts 'Division'
    puts 'Square Root'
    puts 'Exponents'
    puts
    puts 'If you would like to quit, please input: quit'
    puts
    usr_inpt = gets.chomp!.downcase
    end
  put 'Sorry, but Rubylator didn\'t understand your command'
end
=end

