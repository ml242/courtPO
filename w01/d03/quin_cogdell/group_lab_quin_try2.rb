######   hw_w01d03 group lab exercise

STUDENTS = [
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

#Team names from the ACC
#GO HEELS!
TEAM_NAMES = [
  "Tar Heels",
  "Tigers",
  "Terapins",
  "Eagles",
  "Wolfpack",
  "Deacs",
  "Seminoles",
  "Yellow Jackets",
  "Blue Devils",
  "Hoakies",
  "Cavaliers",
  "Orangeman"
]

NUM_STUDENTS = STUDENTS.length

def ask_user_for_groups()
    groups_list = []
    groups_named_list = {}

    puts("Welcome to Kick_Hash, today we'll be working in groups!")
    puts("Today we have #{STUDENTS.length} students")
    group_size_input = ask('How many people should be in a group?')

    group_size = group_size_input.to_i

    num_groups = NUM_STUDENTS / group_size
    puts "There will be #{num_groups} groups today."

    create_groups(group_size, num_groups, groups_list)
    name_groups(groups_list, groups_named_list)

    puts "The groups are: #{groups_named_list}"


end

def create_groups(group_size, num_groups, groups_list)
  #currently does not account for residual group members
  students_c = STUDENTS
  until students_c.size < group_size
      group = []
      group_members = students_c.sample(group_size)
      group << group_members
      group_members.each { |group_member| students_c.delete(group_member)}
      groups_list << group
  end
  students_c.each { |non_grouped_student| groups_list[-1][-1] << non_grouped_student }
end

def name_groups(groups_list, groups_named_list)
  team_names_c = TEAM_NAMES
  for group in groups_list
      team_name = team_names_c.sample()
      team_names_c.delete(team_name)
      groups_named_list[team_name] = group
  end
end


def ask(question)
  puts(question)
  answer = gets.chomp!
  answer.downcase
end



ask_user_for_groups()





















