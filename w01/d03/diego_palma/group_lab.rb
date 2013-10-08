require 'rainbow'
require 'pry'

def ask(question)
  puts question
  answer = gets.chomp
  answer.to_i
end

students = [
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
  nicknames = [
  "nickname1",
  "nickname2",
  "nickname3",
  "nickname4",
  "nickname5",
  "nickname6",
  "nickname7",
  "nickname8",
  "nickname9",
  "nickname10",
  "nickname11",
  "nickname12",
  "nickname13",
  "nickname14",
  "nickname15"
  ]

system("clear")

# Intro
puts "Welcome!"
puts "Just Group It! let's you organize your class and students into random groups".color("#cc0033")

# User's input
group_size = ask("\nHow many students per group?".color("#2ecc71"))
puts "\nEach group will have #{group_size} students.".color("#2ecc71")

# shuffle the array of students
students.shuffle!

# creates new groups of students

groups = students.each_slice(group_size).to_a

# Identify if last group in the array is smaller than the group number requested by user. If the if statement is true then renames that last group as smaller_group and delete it from the original array.

if groups.last != group_size
 smaller_group = groups.last
 groups.pop
end

# Pushes the smaller_group to the last group in the array

smaller_group.each do |name|
  groups.last << name
end


# Each groups gets a random nickname
groups.each do |x|
  nickname = nicknames.sample
  puts "\nGroup #{nickname} is: #{x}"
  nicknames.delete(nickname)
end


# Ask the instructor how use a hash for the nicknames (where each nickname is a key and the each array with a group is a value)

# kickhash = Hash[nicknames.shuffle.zip(groups)]  # I saw this online
# p kickhash



