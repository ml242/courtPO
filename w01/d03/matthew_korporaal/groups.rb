# Groups.rb
# Assigns name to user defined size of groups of people

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

group_names = [
  "Dward Farkwards",
  "Lemon Gypsies",
  "Uncommon Denominators",
  "Super Cheesy Blinztes",
  "Gas Powered Royalty",
  "Killer Dwarves",
  "Mac Attackers",
  "Land Munchers",
  "Grim Sleepers",
  "Oldy Goldies",
  "Cheap Deez",
  "Stinky Undies",
  "Chickadeedledoo",
  "Ramalamadingdong",
  "Seweeeeeeeeee",
  "Craptastics",
  "Stupid Geniusss",
  "Tired babies",
  "Ding Dongs",
  "Paper Eaters",
  "Cheese Poofs",
  "Hammburghers",
  "Skeezlbums",
  "Dingledorphs",
  "Funny Names"
]

def ask(question)
  puts question
  answer = gets.chomp!
end

# Create an array of groups based on group size
def choose_group(list_to_group, group_size)
  random_groups = []
  # get number of groups and find remainder of people
  num_groups = list_to_group.length / group_size.to_i
  extras = list_to_group.length % group_size.to_i
  # Shuffle names
  list_to_group = list_to_group.shuffle!
  # Create new array with groups of folks
  num_groups.times do |x|
    if x == num_groups - 1
      random_groups << list_to_group.shift(group_size + extras)
    else
      random_groups << list_to_group.shift(group_size)
    end
  end
  random_groups
end

# Get group size from user
group_size = ask("What is the size of the groups? ")

# Choose group of student randomly
# Remainder of student added to last group
student_groups = choose_group(students, group_size.to_i)
# Give each team a funny name
index = 0
student_groups.each do |x|
  # Add name to each group
  puts "Group is: #{group_names[index]} #{x}"
  index += 1
end