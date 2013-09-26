require 'json'
require 'pp'

class Hash
  def shuffle
    Hash[self.to_a.sample(self.length)]
  end

  def shuffle!
    self.replace(self.shuffle)
  end
end

def load_json_file( filename )
	JSON.parse( IO.read(filename) )
end

def write_json_file( object, filename )
	File.open(filename, 'w'){ |file| JSON.dump( object, file ) }
end

students = load_json_file( 'class_sample_db.json' )

your_turn = ["your turn", "your next", "batters up", "do it", "good luck"]

puts "This is the class sampler"
puts "press enter to get a random student"
puts "or press q to exit"

user_input = gets.chomp

while user_input != "q"
	students.shuffle!
	students = Hash[students.sort_by{|k,v| v}]
	random_student = students.keys[0]
	puts random_student
	%x(say #{your_turn.sample}, #{random_student})
	students[random_student] += 1
	user_input = gets.chomp
	pp students
end

write_json_file( students, 'class_sample_db.json' )