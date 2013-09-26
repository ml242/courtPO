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
 "Yaritza Rodriguez"]

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

# group_array = [
#   "Alex Hint",
#   "Amy Ruan",
#   "Ana Giraldo-Wingler",
#   "Cooper Mayne",
#   "Diego Palma",
#   "Edward Shin",
#   "Enoch Riese",
#   "Harrison Powers ",]


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
class_size = class_array.length


print class_size

#put back shuffle
new_array = class_array.each_slice(group_size).to_a {|a| p a}

# def create_groups(class_array, group_size)
# new_array = class_array.shuffle

# i want to split this array up in different groups


# def push_remainder(new_array, group_size)
#     if new_array[-1].length != group_size
#     new_array_end = new_array[-2].push(new_array[-1])
#     new_array_end.flatten!
#     new_array = new_array.pop 2
#     new_array = new_array.push new_array_end
#   end
# end

def group_hash(new_array, group_array)
  make_group_hash = { }
  counter_length = new_array.length
  counter = 0
  i = 0
  while counter  < counter_length
    make_group_hash[group_array[i]] = new_array[counter]
    counter += 1
    i += 1
  end
  return make_group_hash
end


# new_array_2 = push_remainder(new_array, group_size)
new_array[-2].push(new_array[-1])
new_array[-2].flatten!
new_array.delete_at(-1)
print new_array


# new_array.delete_at[-1]
# print new_array
# new_array_end2.flatten!



# print new_array_2

# print group_hash(new_array_2, group_array)




# generate random names for each group # if there is a remainder, put last student in the last group