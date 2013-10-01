=begin
need to solve for only running the code if the inputs are integers

=end
continue = true
while continue do

  puts "Welcome to The Calculator. What operation would you like to perform?"
  puts "Multiplication, division, addition, subtraction, exponentiation, or find square root"
  operation = gets.chomp.downcase #retreives type of operation desired


  #makes sure that the input given was one of the valid options, otherwise it asks for it again.
  unless operation == "multiplication" || operation == "addition" || operation  == "subtraction" || operation == "exponentiation" || operation == "find square root" then
    puts "You didn't enter a valid operation. Try again."
    operation = gets.chomp.downcase
  end
    puts "What is the first value?"
    val1_str=gets.chomp
    value1=val1_str.to_i                  #retrieves first value

    unless operation == "find square root" #retrieves second value if second value is needed
      puts "And the second value?"
      val2_str = gets.chomp
      value2=val2_str.to_i
    else
    end

      case operation
        when "multiplication"
         product= value1*value2
         puts "The product of #{value1} and #{value2} is #{product}."

        when "division"
         quotient= value1/value2
         puts "Dividing #{value1} by #{value2} results in #{quotient}"

        when "addition"
          sum = value1 + value2
          puts "The sum of #{value1} and #{value2} is #{sum}."

        when "subtraction"
           diff = value1 - value2
           puts "The difference between #{value1} and #{value2} is #{diff}."

        when "exponentiation"
            bignum = value1**value2
            puts "#{value1} to the power of #{value2}  equals #{bignum}."
        when "find square root"
            sqr_rt = Math.sqrt(value1)
            puts "The square root of #{value1} is #{sqr_rt}."
        else
           puts "I didn't recognize that operation."
      end

    puts "If you would like to continue, press x. If you would like to quit, type quit"
    cont_or_quit = gets.chomp
    continue = false if cont_or_quit == "quit"

end



