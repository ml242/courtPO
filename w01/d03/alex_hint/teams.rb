team_name_array = ['t1',
  't2',
  't3',
  't4',
  't5',
  't6',
  't7',
  't8',
  't9',
  't10',
  't11']

students_array = [
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


#ask the user for how many people are in each group
puts 'How many people would you like in each group'

#take the input -- people in each group
people_per_group_str = gets.chomp
people_per_group = people_per_group_str.to_i

#shuffle students first
students_array.shuffle!

#take students and slice them into arrays of # of people per group
group_array_array = students_array.each_slice(people_per_group).to_a

#how many student groups are there?
number_of_student_groups = group_array_array.size

#pop off the extra arrays in team_name_array
popoff_number = 11 - number_of_student_groups

#popped off team_name_array

#         a[1, 2]                #=> [ "b", "c" ]
#         a[1..3]                #=> [ "b", "c", "d" ]
#         a[4..7]

poppedoff_team_name_array = team_name_array[0..number_of_student_groups-1]

#combine teams array with group array into hash
group_hash = Hash[poppedoff_team_name_array.zip(group_array_array)]


puts number_of_student_groups

p group_array_array
puts poppedoff_team_name_array

puts group_hash
