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
  "Aliento infernal",
  "Los reventados",
  "Drogones",
  "Miley Cyrus Fan Group",
  "Crazy Eyes",
  ]

# Intro
puts "Welcome!"
puts "Just Group It! let's you organize your class and students into random groups"

#User's input
puts  "How many students per group would you like? "
students_per_group_str = gets.chomp!
students_per_group = students_per_group_str.to_i

#Makes a random list of the student's array

students_random = students.shuffle!
student_groups = students_random.each_slice(students_per_group).to_a

student_groups.each do |x|
  group_name = nicknames.sample
  puts "#{group_name} : #{x}"
end




