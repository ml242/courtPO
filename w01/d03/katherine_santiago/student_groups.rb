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

# ask for desired group size
puts "How many people should be in each group?"
puts "Please enter a number between 2 and 11."
group_size_str = gets.chomp
group_size = group_size_str.to_i

num_of_groups = 22 / group_size
puts "There will be #{num_of_groups} groups in all."
remainder = 22 % group_size
puts "The #{remainder} remainder will be in the last group."

# divide class into random groups of that size
    # divide class size by desired group size (user input)
        # - sample of a split?
    # divide class size by desired group size to
        # find out the remainder using % (modulo)
        # find number of groups
    # create random samplings / arrays of that size
    # add the remainder to the last group