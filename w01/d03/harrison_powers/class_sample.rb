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

sayings = ["your turn", "your next", "batters up", "do it", "good luck"]

nicknames = [
  "Shoeshine",
  "Wiggle-bum",
  "Left Eye",
  "Sirius",
  "Letter-Writing",
  "Squirrel Cheeks",
  "Happy Days",
  "Gangsta Walk",
  "High Socks",
  "House of La-Code-Sha",
  "My Humps",
  "Give It Up",
  "Bumblefart",
  "Slightly Askew",
  "Numbnuts",
  "Straight Pubes",
  "Weird Nostrils",
  "Shiny Teeth",
  "Clacky Nails",
  "Loony Bin",
  "Funny Face"
  ]

puts "This is the class sampler"
puts "press enter to get a random student"
puts "or press q to exit"

user_input = gets.chomp

while user_input != "q"
	students.shuffle!
	students = Hash[students.sort_by{|k,v| v}]
	random_student = students.keys[0]
	puts random_student
	%x(say #{sayings.sample}, #{random_student}) if user_input != "f"
	%x(say #{sayings.sample}, #{random_student.first} #{nicknames.sample} #{random_student.last}) if user_input = "f"
	students[random_student] += 1
	user_input = gets.chomp
	pp students
end

write_json_file( students, 'class_sample_db.json' )