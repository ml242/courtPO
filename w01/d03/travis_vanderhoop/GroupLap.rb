 # - User should be able to decide the size of their group
 # - Students should be randomly chosen from list
 # - if there's a remainder student put them in the last group
 # - add a funny team name for each

#prompts a user and to send us their input as a string
def ask(question)
  puts question
  answer = gets.chomp
end

#prompts a user and to send us their input as a float
def ask_for_integer(question)
  puts question
  answer = gets.chomp.to_i
end

#array of students to draw from
students = [
  "Alex Hint",                                      #index 0
  "Amy Ruan",
  "Ana Giraldo-Wingler",
  "Cooper Mayne",
  "Diego Palma",
  "Edward Shin",                                  #index5
  "Enoch Rierubse",
  "Harrison Powers",
  "Jaclyn Jimenez",
  "James Rothpearl",
  "Jimmy Davis",                                  #index10
  "Jorge Colindres",
  "Joshua Oynick",
  "Katherine Santiago",
  "Matt Lucas",
  "Matthew Korporaal",                        #index15
  "Morgan Neiman",
  "Natasha Green",
  "Quin Cogdell",
  "Tom Metzger",
  "Travis Vander Hoop",                      #index20
  "Will Smith",
  "Yaritza Rodriguez"
  ]

#group names to draw from for random assignment
group_names = [
    "Code Crew Crew Cutters",
    "The Fanboys, or People Who Like To be Cooled",
    "The Fans of Whatever You're Into",
    "Teachers Petting Zoo",
    "Grocery Enthusiasts",
    "The Boys (and Girls) From Brazil",
    "The Lovelies",
  ]

#sets the group size
group_size = ask_for_integer("How many people would you like in your group?")

#alerts user to their randomly-assigned group name
#puts "Your group name is: #{group_names.sample}."

#sets an empty hash that will house our randomly chosen teams
groups = []
#set an empty array to house a randomly chosen group
random_group = []

=begin
TO DO LIST
-alter random_group to be a hash that contains a :group name key => an array containing the randomized group
=end
until group_size > students.size do
  while random_group.size < group_size do               #pushes random members of the student array into a random group until there is a remainder
    removed_student = students.shuffle!.slice!(1)
    random_group << removed_student
  end
  groups << random_group
  random_group = []
end

groups << students.flatten                                    #adds remaining students to the end of the groups array

#p groups
#p students.size
#puts "Your #{group_size}-person group is:\n\n"

puts "The groups are:"

groups.each { |x| puts "#{x}" }



















