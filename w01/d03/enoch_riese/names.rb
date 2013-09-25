NAMES = [
"Alex Hint",
"Alicia Lauerman",
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
"Jonathan Leung",
"Jorge Colindres",
"Joshua Oynick",
"Katherine Santiago",
"Matt Lucas",
"Matthew Korporaal",
"Morgan Neiman",
"Natasha Green",
"Phillip Lamplugh",
"Quin Cogdell",
"Tom Metzger",
"Travis Vanderhoop",
"Will Smith",
"Yaritza Rodriguez"]

def generate_groups
  puts "How many people per group?"
  group_size = gets.chomp.to_i
  group_number = NAMES.size / group_size

  group = []
  member = 0
  group_size.times do
    group << NAMES.sample
    NAMES.delete(group[member])
    member+=1
    print group
  end
end

groups = generate_groups
puts groups