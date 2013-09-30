require 'json'

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

def get_char
  state = `stty -g`
  `stty raw -echo -icanon isig`

  STDIN.getc.chr
ensure
  `stty #{state}`
end

MENU = "
This is the class sampler
press (enter) to get a random student
(s)ay something to the student
(f) is for funny
or press (q) to exit
"

SAYINGS = [
	"your turn",
	"your next",
	"batters up", 
	"do it", 
	"good luck"
]

NICKNAMES = [
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

students = load_json_file( 'class_sample_db.json' )

while true
	students.shuffle!
	students = Hash[students.sort_by{|k,v| v}]
	random_student = students.keys[0]
	students[random_student] += 1

	puts MENU

	user_input = get_char

	break if user_input == "q"
	
	system "clear" unless system "cls"

	puts random_student if user_input == "\r"
	%x(say #{random_student}) if user_input == "\r"
	
	funny_student = "#{random_student.split.first} #{NICKNAMES.sample} #{random_student.split.last}"
	puts funny_student if user_input == "f"
	%x(say #{funny_student}) if user_input == "f"

	speak_to_student = "#{SAYINGS.sample}, #{random_student}"
	puts speak_to_student if user_input == "s"
	%x(say #{speak_to_student}) if user_input == "s"
end

write_json_file( students, 'class_sample_db.json' )