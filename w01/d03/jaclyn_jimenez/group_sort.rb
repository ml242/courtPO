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
"Harrison Powers",
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

team_name = {
  :adjectives => [
    "Smelly",
    "Beautiful",
    "Cheerful",
    "Fabulous",
    "Fantastic",
    "Ugly",
    "Hungry",
    "Sleepy",
    "Lazy",
    "Happy",
    "Pretty"
  ],
  :nouns => [
    "Pirates",
    "Hackers",
    "Rinos",
    "Dingos",
    "Ninjas",
    "Bums",
    "Carrots",
    "Apples",
    "Flowers",
    "Losers",
    "Coders",
    "Nerds",
    "Trolls"
  ]
}



def ask(question)
  puts question
  answer = gets.chomp
  answer.to_i
end

group_size = ask("How many students in each group?")
group_size = group_size.to_i

def sort(array, group_size)
  sorted = array.shuffle!.each_slice(group_size).to_a       #sorted is an array containing a random sample of students sliced in groups of group_size variable
  if sorted.last.length < group_size                      #if the last group is smaller than the rest
    last_group = sorted.pop                             #last group is removed and stored in last_group variable
    new_last_group = sorted.pop                       #the new last group is also removed and stored in a different variable
    final_group = last_group + new_last_group       # both variable are joined, so the group with remander students is added to the new last group
    sorted << final_group                         # adds final group to the sorted array
  end
end

def give_name_to_groups(array_of_arrays, team_name)
  array_of_arrays.each do |array|
    #puts name before array
    puts "#{team_name[:adjectives].sample} " + " #{team_name[:nouns].sample}  : " + array.to_s
    #puts name plus array
  end
end

sorted = sort(unsorted, group_size)
give_name_to_groups(sorted, team_name)
