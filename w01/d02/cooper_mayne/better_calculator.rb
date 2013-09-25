def recursive_solver( question )
  operations_in_order = %w{ pow, mul, div, add, sub }
  #exit the loop when you get a single number as an answer
  return question[0] if question.size < 3

  op_loc = question.find_index( "pow"||"mul"||"div"||"add"||"sub")

  first_num, operation, second_num = question[op_loc-1], question[op_loc], question[op_loc+1] 

  part_answer = single_operation( first_num, operation, second_num)

  #sub in ansers for subs one at a time

  question.slice!( op_loc-1, 3 )
  question.insert( op_loc-1, part_answer )

  recursive_solver( question )
  
end
operations = ['add','sub','div','mul','pow']

def proper_question?(question_string, operations_array)
  #check 1: are there at least 3 words in the input? and is the question size odd?
  question_as_array = question_string.split(" ")
  remainder = question_as_array.size % 2
  unless question_as_array.size > 2 && remainder == 1
    return false
  end

  #check 2: does the question syntax make sense?

  operations = question_as_array.values_at(* question_as_array.each_index.select{|i| i.odd?})
  numbers = question_as_array.values_at(* question_as_array.each_index.select{|i| i.even?})

  operations.each do |val|
    unless operations_array.include?(val)
      return false
    end
  end

  numbers.each do |val|
    if val.to_i == 0 && val != '0'
      return false
    end
  end

  # finally - if we have passed previous tests... then we are safe to return true
  return true

end

def single_operation (first_term, operation, second_term) 
  ans = case operation
        when 'add'
          first_term + second_term
        when 'sub'
          first_term - second_term
        when 'div'
          first_term.to_f / second_term.to_f
        when 'mul'
          first_term * second_term
        when 'pow'
          first_term ** second_term
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

  #make sure we have proper question
  unless proper_question?( question , operations)
    puts "thats a bad question! input \"help\" to learn how to use CalcZor"
    next
  end

  question_as_array = question.split(" ")

  puts recursive_solver( question_as_array )

end
