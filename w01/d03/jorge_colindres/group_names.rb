
def ask_group_size
  response = 0
  until response != 0
    puts "How many people do you want in each group?"
    response = gets.chomp.to_i
  end
  response
end

def place_into_random_groups
  kick_hash = [
    { :name => "Alex Hint", :email => "alex.hint.ah@gmail.com"},
    { :name => "Amy Ruan", :email => "nyc.amy@gmail.com"},
    { :name => "Ana Giraldo-Wingler", :email => "agiraldow@gmail.com"},
    { :name => "Cooper Mayne", :email => "coopermayne@gmail.com"},
    { :name => "Diego Palma", :email => "dppalma@gmail.com"},
    { :name => "Edward Shin", :email => "eshin0910@gmail.com"},
    { :name => "Enoch Riese", :email => "enoch.riese@gmail.com"},
    { :name => "Harrison Powers", :email => "harrisonpowers@gmail.com"},
    { :name => "Jaclyn Jimenez", :email => "jaclynejimenez@gmail.com"},
    { :name => "James Rothpearl", :email => "jrothpearl@gmail.com"},
    { :name => "Jimmy Davis", :email => "jamesmdavis5@gmail.com"},
    { :name => "Jorge Colindres", :email => "jorge.e.colindres@gmail.com"},
    { :name => "Joshua Oynick", :email => "oynickj@gmail.com"},
    { :name => "Katherine Santiago", :email => "santiago.kat@gmail.com"},
    { :name => "Matt Lucas", :email => "mattlucas@gmail.com"},
    { :name => "Matthew Korporaal", :email => "matthew.korporaal@gmail.com"},
    { :name => "Morgan Neiman", :email => "quackhouse@me.com"},
    { :name => "Natasha Green", :email => "greennatasha@aol.com"},
    { :name => "Quin Cogdell", :email => "quincogdell@gmail.com"},
    { :name => "Tom Metzger", :email => "metzgert@gmail.com"},
    { :name => "Travis Vanderhoop", :email => "vanderhoop@me.com"},
    { :name => "Will Smith", :email => "will.smith@preplaysports.com"},
    { :name => "Yaritza Rodriguez", :email => "saturn540@gmail.com"}
  ]
  group_size = ask_group_size
  class_with_groups = Array.new

  kick_hash.shuffle!

  until kick_hash.empty?
    group = kick_hash.slice(0, group_size)
    kick_hash = kick_hash.drop(group_size)
    class_with_groups << group
  end
  class_with_groups
end

def no_small_groups
  group_size = ask_group_size
  class_with_groups.last = last_group
  i = 0

  if last_group.size != group_size
    last_group.each do |student|
      class_with_groups[i] << student
      i += 1
    end
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
  i = 0

  nicknames.shuffle!

  class_with_groups.each do |group|
    groups_with_names[nicknames[i]] = group
    i += 1
  end
  groups_with_names
end

def random_group_name_generator
  groups_with_names = give_group_nicknames
  num_of_groups = groups_with_names.size

  single_group = groups_with_names.values.first
  group_size = single_group.size
  smaller_single_group = groups_with_names.values.last
  smaller_single_group_size = smaller_single_group.size

  puts "There are #{num_of_groups} groups. The largest group has #{group_size} students, and the smallest group has #{smaller_single_group_size} students."
  puts "Do you want to see the groups? (y/n)"
  response = gets.chomp
  p groups_with_names if response.downcase == "y" || response.downcase == "yes"
end

random_group_name_generator

