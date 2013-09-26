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
	"Funny Face",
	"Sweaty Palms"
]

def menu
	puts "This is the class sampler"
	puts "press (enter) to get a random student"
	puts "(s)ay something to the student"
	puts "(f) is for funny"
	puts "or press (q) to exit"
end

while true
	menu
	user_input = nil
	user_input = gets.chomp

	break if user_input == "q"
	
	students.shuffle!
	students = Hash[students.sort_by{|k,v| v}]
	random_student = students.keys[0]
	students[random_student] += 1
	
	pp students
	
	puts

	puts random_student if user_input == ""
	%x(say #{random_student}) if user_input == ""
	
	puts "#{random_student.split.first} #{nicknames.sample} #{random_student.split.last}" if user_input == "f"
	%x(say #{random_student.split.first} #{nicknames.sample} #{random_student.split.last}) if user_input == "f"

	puts "#{sayings.sample}, #{random_student}" if user_input == "s"
	%x(say #{sayings.sample}, #{random_student}) if user_input == "s"

	puts
	puts
end

write_json_file( students, 'class_sample_db.json' )