
def ask_group_size
  puts "How large do you want the groups to be?"
  gets.chomp.to_i
end

def place_into_random_groups
  students = [
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
    "Quin Cogdell",
    "Tom Metzger",
    "Travis Vanderhoop",
    "Will Smith",
    "Yaritza Rodriguez"
  ]
  group_size = ask_group_size
  class_with_groups = Array.new

  until students.empty?
    students.shuffle!
    group = students.slice(0, group_size)
    students = students.drop(group_size)
    class_with_groups << group
  end
  class_with_groups
end


def give_group_nicknames
    nicknames = [
      "the_whiskers",
      "slipper_family",
      "the_thunder_dogs",
      "space_jam",
      "the_oscars",
      "juju_bees",
      "team_dwight",
      "the_ryan_goslings",
      "old_ladies",
      "the_OGs",
      "silly_rabbits",
      "fantasia",
      "yellow_shirt_team",
      "little_house_on_the_prairy",
      "fat_cats",
      "the_goonies",
      "family_tree",
      "team_white_hats",
      "sugar_mommas",
      "i_like_turtles",
      "the_ghandis",
      "team_carrot_eaters",
      "fantastic_five"
    ]
  class_with_groups = place_into_random_groups
  groups_with_names = Hash.new

  class_with_groups.each do |group|
    groups_with_names[nicknames.sample.to_sym] = group
  end
  p groups_with_names
end

give_group_nicknames

