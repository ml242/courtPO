CLASS_MEMBERS = [
  { name: "Alex Hint" },
  #{ name: "Alicia Lauerman" },
  { name: "Amy Ruan" },
  { name: "Ana Giraldo-Wingler" },
  { name: "Cooper Mayne" },
  { name: "Diego Palma" },
  { name: "Edward Shin" },
  { name: "Enoch Riese" },
  { name: "Harrison Powers " },
  { name: "Jaclyn Jimenez" },
  { name: "James Rothpearl" },
  { name: "Jimmy Davis" },
  #{ name: "Jonathan Leung" },
  { name: "Jorge Colindres" },
  { name: "Joshua Oynick" },
  { name: "Katherine Santiago" },
  { name: "Matt Lucas" },
  { name: "Matthew Korporaal" },
  { name: "Morgan Neiman" },
  { name: "Natasha Green" },
  #{ name: "Phillip Lamplugh" },
  { name: "Quin Cogdell " },
  { name: "Tom Metzger" },
  { name: "Travis Vanderhoop" },
  { name: "Will Smith" },
  { name: "Yaritza Rodriguez"}
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
