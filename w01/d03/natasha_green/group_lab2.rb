## Group Lab Exercise
#Make a program that will return a group of classmates
##### Specifications
#- User should be able to decide the size of their group
#- Students should be randomly chosen from list
#- if there's a remainder student put them in the last group
#- add a funny team name for each

# -------------------------------------------------

# Tasha thoughts -----  We give the user a list of names of who will be in the group
group1 =[]
group2 = []
group3 = []

classmates = ['a', 'b', 'c', 'd', "e"]
max = classmates.length
puts "Maximum amount of people in the class are #{max}"

#- User should be able to decide the size of their group

# Tasha thoughts ----- Ask user how many people he/she wants in a group?
puts "User how many people do you want in a group?"
group_str = gets.chomp
group = group_str.to_i

# Tasha thoughts -----  The user inputs the amount of people needed in the group

number = max/group
classmates_remaining = max % group

puts "The amount of people in a group you want in the group is: #{group}"


if group >= max
  puts "You have entered the whole class or more students then necessary, please enter anoher value."
  group_str = gets.chomp
  group = group_str.to_i
end

#- Students should be randomly maxchosen from list
# Tasha thoughts -----  That number is used to pick people from the group
# the number is used to pick people at random from the group
#The number i picked for the group is the amount of samples I want to pick out of the group

classmates.sample group
group1 = classmates.shift group

classmates.sample group
group2 = classmates.shift group

classmates.sample group
group3 = classmates.shift group


#- if there's a remainder student put them in the last group
# Tasha thoughts -----  The last student in the group is
if classmates = classmates_remaining
  group3 << classmates
  group3.to_s
  group3.flatten
end

puts " group 1 = #{group1} , group 2 = #{group2}, group 3 = #{group3} "


#- add a funny team name for each


# Tasha thoughts ----- There is a list of names for people in the group.








