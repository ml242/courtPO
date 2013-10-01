class_array = [
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
 "Quin Cogdell",
 "Tom Metzger",
 "Travis Vanderhoop",
 "Will Smith",
 "Yaritza Rodriguez"
]

group_array = [
  "Happy",
  "Development",
  "Winning",
  "Growth",
  "Strategy",
  "Crazy",
  "Vision",
  "Lovely",
  "Dandy",
  "Grumpy",
  "Smiles",
  "Laughs"]

def ask(question)
  puts(question)
  answer = gets.chomp
end

def ask_for_number(question)
 answer = ask(question)
 answer.to_f
end

# ask for size of each group
group_size = ask_for_number("How many people do you want in your group?")
# look at hash and see how many members are in the class
class_array.shuffle!
#create new array
new_array = class_array.each_slice(group_size).to_a {|a| p a}


def push_remainder(new_array, group_size)
  if new_array[-1].length != group_size #figure out whether or not i need to split
    new_array[-2].push(new_array[-1]) #pushes the last element with the second to last element
    new_array[-2].flatten! #flattens out the array in elemen[-2]
    new_array.delete_at(-1) #delete the last array to avoid duplicates
    new_array # return to the new array
  else
    new_array
  end
end

def group_hash(new_array, group_array)
  make_group_hash = { }
  i = 0
  while i  < new_array.length
    make_group_hash[group_array[i]] = new_array[i]
    i += 1
  end
  return make_group_hash
end

new_array = push_remainder(new_array, group_size)
new_groups = group_hash(new_array, group_array)

c= 0
print "These are the groups: "
while c < new_groups.length
  print " #{new_groups.keys[c]} - #{new_groups.values[c]}"
  c += 1
end
