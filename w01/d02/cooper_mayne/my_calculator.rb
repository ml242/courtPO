operations = ['add','sub','div','mul','pow']

def proper_question?(question_string, operations_array)
  #check 1: are there 3 words in the input?
  question_as_array = question_string.split(" ")
  if question_as_array.size != 3
    return false 
  elsif not operations_array.include?(question_as_array[1])
    return false
  elsif question_as_array[0].to_i == 0 && question_as_array[0] != "0"
    return false
  elsif question_as_array[2].to_i == 0 && question_as_array[2] != "0"
    return false
  else
    return true
  end
end


puts "welcome to CalcZor!\n"

puts "THESE ARE THE COMMANDS CALCZOR UNDERSTANDS!"
operations.each {|operation| puts "   #{operation}"}

puts "\nWARNING: CalcZor is not all powerful... it can only process two number and one operation at a time..."
puts "\nYour input should look like... \"5 add 3\" or \"3 pow 2\"\n"

while true
  print "\nInput: "
  question = gets.downcase.chomp!

  unless proper_question?( question , operations)
    puts "thats a bad question! input \"help\" to learn how to use CalcZor"
    next
  end

  first_term = question_as_array[0].to_i
  operation = question_as_array[1]
  second_term = question_as_array[2].to_i

  case operation
  when "add"
    puts first_term + second_term
  when "sub"
    puts first_term - second_term
  when "div"
    puts first_term / second_term
  when "mul"
    puts first_term * second_term
  when "pow"
    puts first_term ** second_term
  end
end
