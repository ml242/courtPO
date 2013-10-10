require 'pry'

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

group_names = ["The Mountain Crunchers",
"Testy Summit",
"The City Militia",
"Stomping Roast Femmes",
"Unfair Hoops",
"Dramatic Diggers",
"Indigo Freedom Bitches",
"Former Endzone Fairies",
"Lingering Red Thunderballs",
"Watery Stucco Beaters",
"Thick Fallout",
"Wise Court Ramblers",
"East Honkers",
"Stumbling Steel Buzzards",
"Horny Bayside Pandas"
]


# ask for desired group size
puts "How many people should be in each group?"
puts "Please enter a number between 2 and 11."
group_size_str = gets.chomp
group_size = group_size_str.to_i

# shuffles the full array of students, slices them by group size, and turns into array
groups = students.shuffle.each_slice(group_size).to_a
# puts "#{groups}"

#check if last group only has 1 person
if groups.last.length == 1
  binding.pry
  last = groups[-1]
  # prints last person
    # puts "#{last}"
  # drops last person
  groups.pop
    # prints new groups without last person
    puts "#{groups}"
  groups[-1] << last
 groups[-1].flatten!
    # puts "The groups will be: #{groups}"
   # puts "#{groups}"
    # puts "#{groups[-1]}"
    # puts "#{last}"
else
  puts "The randomized groups will be: #{groups}"

end


    # name groups
    # divide class size by desired group size to
        # find out the remainder using % (modulo)
    # add the remainder to the last group