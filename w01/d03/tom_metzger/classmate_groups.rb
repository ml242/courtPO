#VARIABLES & CONSTANTS
hash_students = {
  :alex_hint => {:name => "Alex Hint", :email => "alex.hint.ah@gmail.com"},
  :amy_Ruan => {:name => "Amy Ruan", :email => "nyc.amy@gmail.com"},
  :ana_giraaldo_wingler => {:name => "Ana Giraldo-Wingler", :email => "agiraldow@gmail.com"},
  :cooper_mayne => {:name => "Cooper Mayne", :email => "coopermayne@gmail.com"},
  :diego_palma => {:name => "Diego Palma", :email => "dppalma@gmail.com"},
  :edward_shin => {:name => "Edward Shin", :email => "eshin0910@gmail.com"},
  :enoch_riese => {:name => "Enoch Riese", :email => "enoch.riese@gmail.com"},
  :harrison_powers => {:name => "Harrison Powers ", :email => "harrisonpowers@gmail.com"},
  :jaclyn_jimenez => {:name => "Jaclyn Jimenez", :email => "jaclynejimenez@gmail.com"},
  :james_rothpearl => {:name => "James Rothpearl", :email => "jrothpearl@gmail.com"},
  :jimmy_davis => {:name => "Jimmy Davis", :email => "jamesmdavis5@gmail.com"},
  :jorge_colindres => {:name => "Jorge Colindres", :email => "jorge.e.colindres@gmail.com"},
  :joshua_oynick => {:name => "Joshua Oynick", :email => "oynickj@gmail.com"},
  :katherin_santiago => {:name => "Katherine Santiago", :email => "santiago.kat@gmail.com"},
  :matt_lucas => {:name => "Matt Lucas", :email => "mattlucas@gmail.com"},
  :matthew_korporaal => {:name => "Matthew Korporaal", :email => "matthew.korporaal@gmail.com"},
  :morgan_neiman => {:name => "Morgan Neiman", :email => "quackhouse@me.com"},
  :natasha_green => {:name => "Natasha Green", :email => "greennatasha@aol.com"},
  :quin_cogdell => {:name => "Quin Cogdell ", :email => "quincogdell@gmail.com"},
  :tom_metzger => {:name => "Tom Metzger", :email => "metzgert@gmail.com"},
  :travis_vanderhoop => {:name => "Travis Vanderhoop", :email => "vanderhoop@me.com"},
  :will_smith => {:name => "Will Smith", :email => "will.smith@preplaysports.com"},
  :yaritza_rodriguez => {:name => "Yaritza Rodriguez", :email => "saturn540@gmail.com"}
}

desiered_number_of_groups = ""

group_names = [
  "Open Minds",
  "Gem Enthusiasts",
  "Carpel Tunnel Cartel",
  "Gods of Git",
  "Open Source Mavens",
  "The 'gres is always greener",
  "Gryffindor",
  "Slytherin",
  "Ravenclaw",
  "Hufflepuff",
  "Refactor Fiends",
  "Followers of Jobs",
  "Apostles of Linus",
  "Matz' Magicians",
  "Team Jonathan",
  "Team Phil",
  "Team Alicia",
  "Assembled Coders",
  "Command Line Commandos",
  "Broadway Bandits"
]

total_groups = nil


#METHODS
def ask(question)
  puts(question)
  answer = gets.downcase.chomp!
end

def ask_num(question)
  number_as_string = ask(question)
  number = number_as_string.to_i
end



# def select_student(students_per_group)
#   for i in 1..students_per_group
#     selected_student = student_array.sample

# end

#CODE


  #TO DO---- is anyone missing today (y/n)
      # ask for names one by one using a while loop
      # remake list by deleting these students from the list
      # This will replace hash_students.length


#user can select size of group
    #TO DO---  or choose number of groups


until desiered_number_of_groups == "y" || desiered_number_of_groups == "yes"
  group_size = ask_num("How many people do you want per group?")

  number_of_groups = hash_students.length / group_size
  remaining_people = hash_students.length % group_size
  total_groups = number_of_groups + remaining_people

  puts "With today's attendance you will have #{number_of_groups} groups of #{group_size} and #{remaining_people} groups of #{group_size + 1} for a total of #{total_groups} groups."
  desiered_number_of_groups = ask("Is this your desiered number of groups? (y/n)")
end

# for i in 1..total_groups do
#   selected_student = student_array.sample
#   puts selected_student
# end

#POTENTIALLY CREATE def select_and_remove(desired_array, )

def create_groups(total_groups, group_names)
  group_array = []
  for i in 1..total_groups
    sampled_group_name = group_names.sample
    group_array << sampled_group_name
    group_names.delete(sampled_group_name)
  end
  puts group_array
  return group_array
end


#student_array = hash_students.keys.to_a
#total_students = hash_students.length

#puts hash_students.to_a.sample

final_group_size_array = []
for i in 1..total_groups
  final_group_size_array << group_size
end

x = final_group_size_array.length - 1

for i in 1..remaining_people
  final_group_size_array[x] += 1
  x -= 1
end
puts final_group_size_array









#students should be randomly chosen from the list
    #add without replacement, or without replacement for x cycles


#if there is a remainder student put them in the last group
    #if someone is not there then temporarily remove them from the groupings



