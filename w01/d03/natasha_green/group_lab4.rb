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

first_group= []

puts "User you have #{students.length} students in the class.
Please pick the amount of students you want in a group:"

groups_wanted_str = gets.chomp
groups_wanted = groups_wanted_str.to_i

# 3

total_groups = students.length/groups_wanted
students_remain = students.length/groups_wanted

#7
#2

first_group = students.sample groups_wanted
students_left = students - first_group


#We want 7 groups of 3 and last group will have 3 + 2

mix = []

i = 0
while (i< total_groups)
  mix[i]  = students.sample groups_wanted
  print mix[i]
  i += 1
end

