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

def random_name
  random_names = %w(bunnyFaces mouseTails Funkypheasants PinkPanthers Jimmies Calsters Whipperbottoms TankTopsOnly)
  random_names.sample
end
def make_groups( people_ungrouped, group_size )

  groups = []

  i=0
  while people_ungrouped.size > group_size-1 do
    group_members = people_ungrouped.shift( group_size )
    groups.push( { name: random_name, members: group_members, id: i } )
    i += 1
  end

  people_ungrouped.each_with_index do |person, index|
    groups[index][:members].push( person )
  end
  return groups
end

groups = make_groups( CLASS_MEMBERS, 3)
groups.each {|group| puts group; puts}

