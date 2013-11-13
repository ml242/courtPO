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


ENCOUNTER_COUNTER = []

CLASS_MEMBERS.each do |member|
  CLASS_MEMBERS.reject{ |mem| mem == member }.each do |friend|
    pair = [member[:name], friend[:name]].sort
    meeting_hash = {
      pair: pair,
      meeting_count: 0
    }

    ENCOUNTER_COUNTER.push( meeting_hash ) unless ENCOUNTER_COUNTER.include? meeting_hash
  end
end



def ask(question)
  puts question
  gets.chomp!.to_i
end

def random_name
  name = RANDOM_NAMES.sample
  RANDOM_NAMES.delete(name)
  name
end

def make_groups( group_size )
  groups = []


end

def proper_answer?(ans)
  [1,2,3,4,5].include?(ans)
end

def update_encounter_counter( new_groupings )
  # look at new_groupings and add meetings to ENCOUNTER_COUNTER
  meetings = []
  new_groupings.each do |group|
    group.each do |member|
      group.reject{ |mem| mem==member }.each do |friend|
        pair = [member, friend].sort
        meetings.push pair
      end
    end
  end

  meetings.uniq!

  meetings.each do |meeting|
    ENCOUNTER_COUNTER[meeting] += 1
  end
end

while true
  group_size = ask("how many people in each group?")
  puts "BAD INPUT"; next unless proper_answer?(group_size)
  groups = make_groups(group_size)
  puts "\nTHESE ARE YOUR GROUPS!!!  HAVE FUN\n"
  groups.each do |group|
    puts
    print group[:name]
    puts " (" + group[:members].size.to_s + ")"
    group[:members].each {|member| puts "  -" + member[:name]}
  end

  update_encounter_counter(groups)
end
puts ENCOUNTER_COUNTER
