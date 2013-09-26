
def ask_group_size
  puts "How large do you want the groups to be?"
  gets.chomp.to_i
end

def place_into_random_groups
  kick_hash = [
    {:name => "Alex Hint", :email => "alex.hint.ah@gmail.com"},
    {:name => "Amy Ruan", :email => "nyc.amy@gmail.com"},
    {:name => "Ana Giraldo-Wingler", :email => "agiraldow@gmail.com"},
    {:name => "Cooper Mayne", :email => "coopermayne@gmail.com"},
    {:name => "Diego Palma", :email => "dppalma@gmail.com"},
    {:name => "Edward Shin", :email => "eshin0910@gmail.com"},
    {:name => "Enoch Riese", :email => "enoch.riese@gmail.com"},
    {:name => "Harrison Powers ", :email => "harrisonpowers@gmail.com"},
    {:name => "Jaclyn Jimenez", :email => "jaclynejimenez@gmail.com"},
    {:name => "James Rothpearl", :email => "jrothpearl@gmail.com"},
    {:name => "Jimmy Davis", :email => "jamesmdavis5@gmail.com"},
    {:name => "Jorge Colindres", :email => "jorge.e.colindres@gmail.com"},
    {:name => "Joshua Oynick", :email => "oynickj@gmail.com"},
    {:name => "Katherine Santiago", :email => "santiago.kat@gmail.com"},
    {:name => "Matt Lucas", :email => "mattlucas@gmail.com"},
    {:name => "Matthew Korporaal", :email => "matthew.korporaal@gmail.com"},
    {:name => "Morgan Neiman", :email => "quackhouse@me.com"},
    {:name => "Natasha Green", :email => "greennatasha@aol.com"},
    {:name => "Quin Cogdell ", :email => "quincogdell@gmail.com"},
    {:name => "Tom Metzger", :email => "metzgert@gmail.com"},
    {:name => "Travis Vanderhoop", :email => "vanderhoop@me.com"},
    {:name => "Will Smith", :email => "will.smith@preplaysports.com"},
    {:name => "Yaritza Rodriguez", :email => "saturn540@gmail.com"}
  ]
  group_size = ask_group_size
  class_with_groups = Array.new

  until kick_hash.empty?
    kick_hash.shuffle!
    group = kick_hash.slice(0, group_size)
    kick_hash = kick_hash.drop(group_size)
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

