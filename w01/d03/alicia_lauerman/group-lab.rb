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
# shuffle the array of students
students.shuffle!

# shuffle the array of students
students.shuffle!

system("clear")
print "\nHow many students per group? "
per_group = gets.chomp!.to_i

cohort = students.each_slice(per_group).to_a

if cohort[-1].size == 1
  straggler = cohort.pop
  print "\nStraggler!\n #{straggler[0]} will be joining #{cohort[-1].join(', ')}"
  cohort.last << straggler[0]
end

print "\nFor this lab, there will be #{cohort.size} groups. "
