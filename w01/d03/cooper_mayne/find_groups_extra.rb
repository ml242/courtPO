CLASS_MEMBERS = [
  { name: "Alex Hint", previously_grouped: 0 },
  #{ name: "Alicia Lauerman", previously_grouped: 0  },
  { name: "Amy Ruan", previously_grouped: 0  },
  { name: "Ana Giraldo-Wingler", previously_grouped: 0  },
  { name: "Cooper Mayne", previously_grouped: 0  },
  { name: "Diego Palma", previously_grouped: 0  },
  { name: "Edward Shin", previously_grouped: 0  },
  { name: "Enoch Riese", previously_grouped: 0  },
  { name: "Harrison Powers ", previously_grouped: 0  },
  { name: "Jaclyn Jimenez", previously_grouped: 0  },
  { name: "James Rothpearl", previously_grouped: 0  },
  { name: "Jimmy Davis", previously_grouped: 0  },
  #{ name: "Jonathan Leung", previously_grouped: 0  },
  { name: "Jorge Colindres", previously_grouped: 0  },
  { name: "Joshua Oynick", previously_grouped: 0  },
  { name: "Katherine Santiago", previously_grouped: 0  },
  { name: "Matt Lucas", previously_grouped: 0  },
  { name: "Matthew Korporaal", previously_grouped: 0  },
  { name: "Morgan Neiman", previously_grouped: 0  },
  { name: "Natasha Green", previously_grouped: 0  },
  #{ name: "Phillip Lamplugh", previously_grouped: 0  },
  { name: "Quin Cogdell ", previously_grouped: 0  },
  { name: "Tom Metzger", previously_grouped: 0  },
  { name: "Travis Vanderhoop", previously_grouped: 0  },
  { name: "Will Smith", previously_grouped: 0  },
  { name: "Yaritza Rodriguez", previously_grouped: 0 }
]

RANDOM_NAMES = ["Bunny Faces", 
                "Mouse Tails", 
                "Funky Pheasants", 
                "Pink Panthers", 
                "The Jimmies", 
                "The Calsters", 
                "Whipper Bottoms", 
                "Tank Tops Only",
                "Bruth Eaters" ]

def ask(question)
  puts question
  gets.chomp!.to_i
end

def random_name
  name = RANDOM_NAMES.sample
  RANDOM_NAMES.delete(name)
  name
end

def make_groups( people_ungrouped, group_size )

  groups = []

  i=0
  while people_ungrouped.size >= group_size do
    people_ungrouped.shuffle!
    group_members = people_ungrouped.shift( group_size )
    groups.push( { name: random_name, members: group_members, id: i } )
    i += 1
  end

  people_ungrouped.each_with_index do |person, index|
    groups[index][:members].push( person )
  end
  return groups
end

def proper_answer?(ans)
  [1,2,3,4,5].include?(ans)
end

while true
  group_size = ask("how many people in each group?")
  puts "BAD INPUT"; next unless proper_answer?(group_size)
  groups = make_groups( CLASS_MEMBERS.dup, group_size)
  puts "\nTHESE ARE YOUR GROUPS!!!  HAVE FUN\n"
  groups.each do |group|
    puts
    print group[:name]
    puts " (" + group[:members].size.to_s + ")"
    group[:members].each {|member| puts "  -" + member[:name]}
  end
end
