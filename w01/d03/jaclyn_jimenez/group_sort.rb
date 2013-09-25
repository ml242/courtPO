# program asks for size of group
# students are randomly choosen from list and sorted into arrays = # of groups
# students are associated with funny team name group
# if there is a remaining student, put in last group

# later…
# - try incorperating this hash information making the students into hashes to add additional information about them, here is the link that you can use. [Here is the CSV file](http://f.cl.ly/items/06370G222n1u122o2q1W/class.txt).
# - incorperate using conditionals based
# - try adding emails
# - try using feature branches for each of these
# - refactor your codes to use more methods as a craftsperson
# - try optimizing


unsorted = [
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


def ask(question)
  puts question
  answer = gets.chomp
  answer.to_i
end

group_size = ask("What is the size of the group?")
group_size = group_size.to_i

def sort(array, group_size)
  sorted = array.shuffle!.each_slice(group_size).to_a
  if sorted.last.length < group_size
    last_group = sorted.pop
    new_last_group = sorted.pop
    final_group = last_group + new_last_group
    sorted << final_group
  end
  puts "#{sorted}"
end

sort(unsorted, group_size)
