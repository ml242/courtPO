require 'enumerator'
require 'pp'

STUDENTS = [
	"Alex Hint",
	"Amy Ruan",
	"Ana Giraldo-Wingler",
	"Cooper Mayne",
	"Diego Palma",
	"Edward Shin",
	"Enoch Riese",
	"Harrison Powers ",
	"Jaclyn Jimenez",
	"James Rothpearl",
	"Jimmy Davis",
	"Jorge Colindres",
	"Joshua Oynick",
	"Katherine Santiago",
	"Matt Lucas",
	"Matthew Korporaal",
	"Morgan Neiman",
	"Natasha Green",
	"Quin Cogdell ",
	"Tom Metzger",
	"Travis Vanderhoop",
	"Will Smith",
	"Yaritza Rodriguez"
]
TEAM_NAMES = [
	"The Inconceivables",
	"The Hash Rockets",
	"The Enumerati",
	"The Super Sliders",
	"The Master Shakes",
	"The Crazy Eights",
	"The Darth Vanderhoops",
	"The Redundancy Refactorers",
	"The Pedestals of Ridiculousness",
	"The Buzzed Banshees",
	"The Killer Klowns (from outer space)"
]

def grouper(size_of_group = 3)
	teams = Hash.new
	i = 0
	STUDENTS.shuffle.each_slice(size_of_group) do |students|
		if students.length < size_of_group
			teams[TEAM_NAMES[i-1]] += students
		else
			teams[TEAM_NAMES[i]] = students;
		end
		i+=1
	end
	pp teams
end

def ask(question)
	puts question
	return gets.chomp
end

def ask_number(question)
	ask(question).to_i
end

user_requested_size_of_group = ask_number("size of group?")

grouper(user_requested_size_of_group)