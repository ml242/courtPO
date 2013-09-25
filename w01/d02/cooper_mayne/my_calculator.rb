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

def display_menu(ops)
  puts "THESE ARE THE COMMANDS CALCZOR UNDERSTANDS!"
  ops.each {|operation| puts " *  #{operation}"}

  puts "\nWARNING: CalcZor is not all powerful... it can only\nprocess two number and one operation at a time..."
  puts "\nYour input should look like... \"5 add 3\" or \"3 pow 2\"\n"
end

print <<-eos
   ____           _          _____               
  / ___|   __ _  | |   ___  |__  /   ___    _ __ 
 | |      / _` | | |  / __|   / /   / _ \  | '__|
 | |___  | (_| | | | | (__   / /_  | (_) | | |   
  \____|  \__,_| |_|  \___| /____|  \___/  |_|  
\n
eos

display_menu(operations)

while true
  print "\nInput: "
  question = gets.downcase.chomp!
  display_menu(operations) if question == "help"

  unless proper_question?( question , operations)
    puts "thats a bad question! input \"help\" to learn how to use CalcZor"
    next
  end


  question_as_array = question.split(" ")

  first_term = question_as_array[0].to_i
  operation = question_as_array[1]
  second_term = question_as_array[2].to_i

  print "Answer: " 
  puts case operation
  when "add"
    first_term + second_term
  when "sub"
    first_term - second_term
  when "div"
    first_term.to_f / second_term
  when "mul"
    first_term * second_term
  when "pow"
    first_term ** second_term
  end
end
