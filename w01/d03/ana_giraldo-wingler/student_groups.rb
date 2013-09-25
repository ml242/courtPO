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
#ask user desired group size
puts "How many people per group? Choose a number between 2 and 11."
group_size_str = gets.chomp
group_size = group_size_str.to_i

#shuffle 'students' array and slice into groups of group_size variable
rand = students.shuffle.each_slice(group_size).to_a

puts "#{rand}"

#chop shuffled array into smaller arrays of group_size

# puts poop

# students.shuffle.slice(group_size)
# puts rand

# #divide class size by desired group size to find # of groups
# group_num = 23 / group_size
# puts "OK. That makes #{group_num} groups."

# #find out the remainder using modulo (%)
# remainder = 23 % group_size

# #create random arrays using group size
# student_groups = students.sample(group_size)
# #split sample?
# puts student_groups


#add remainder to last group
