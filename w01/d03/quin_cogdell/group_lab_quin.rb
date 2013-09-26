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

    puts("Welcome to Kick_Hash, today we'll be working in groups!")
    puts("Today we have #{STUDENTS.length} students")
    group_size_input = ask('How many people should be in a group?')

    group_size = group_size_input.to_i
    num_groups = NUM_STUDENTS / group_size

    puts "There will be #{num_groups} groups today."
    create_groups(group_size, num_groups, groups_list)
    p groups_list

end



def create_groups(group_size, num_groups, groups_list)
  #group = []
  #team_names_c = TEAM_NAMES
  students_c = STUDENTS

  until students_c.size < 1
      group = []
      1.upto(group_size) { |student| group << students_c.sample }
      group.each { |student| students_c.delete(student)}
      groups_list << group

      #puts students_c.size
      #puts group
  end


end

def name_groups(groups_list, group_names)
end


def ask(question)
  puts(question)
  answer = gets.chomp!
  answer.downcase
end


#num_groups = num_of_groups(group_size_input)
#kepts getting a undefied method '/' for
# def num_of_groups(group_size_input)
#   puts NUM_STUDENTS.inspect
#   num_students = NUM_STUDENTS
#   group_size_input.to_i!
#   num_groups = group_size_input / num_students
#   puts num_groups
# end


ask_user_for_groups()





















