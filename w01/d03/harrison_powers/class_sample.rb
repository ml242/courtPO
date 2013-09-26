require 'json'

def load_json_file( filename )
	JSON.parse( IO.read(filename) )
end


=begin UPDATE WITH ABILITY TO WRITE FROM OBJECT

def write_json_file( object, filename )
	JSON.parse( IO.dump(filename) )
end

=end


students = load_json_file( class_sampleDB.json )


puts "This is the class sampler"
puts "press enter to get a random student"
puts "or press q to exit"

user_input = gets.chomp

while user_input != q
	random_student = students.first
	%x(say #{random_student.to_s})
	students[random_student][:frequency] += 1
	students.shuffle.sort[:frequency]
	user_input = gets.chomp
end

write_json_file( students, class_sampleDB.json )