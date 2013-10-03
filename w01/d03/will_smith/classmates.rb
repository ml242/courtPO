###Week01-Day03

#WORK IN YOUR OWN FOLDER ONLY!

## Group Lab Exercise
#Make a program that will return a group of classmates

##### Specifications

 # - if there's a remainder student put them in the last group
## ^ this instruction was confusing

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
    "the funky bunch",
    "the gang gets grouped",
    "the one with all the people",
    "the marine biologist",
]
 # - User should be able to decide the size of their group
puts "Let's make a group...how many people would you like in your group?"
    group_num = gets.chomp!.to_i
 # - Students should be randomly chosen from list
    groups =students.sample(group_num)
 # - add a funny team name
    funny_name = group_names.sample
  puts "Your random group is '#{funny_name}'. \n Your group members are: #{groups}"


# later…
 # - try incorperating this hash information making the students into hashes to add additional information about them, here is the link that you can use. [Here is the CSV file](http://f.cl.ly/items/06370G222n1u122o2q1W/class.txt).
 # - incorperate using conditionals based
 # - try adding emails
 # - try using feature branches for each of these
 # - refactor your codes to use more methods as a craftsperson
 # - try optimizing
