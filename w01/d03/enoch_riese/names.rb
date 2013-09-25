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
  group = []
  group_size.times do
    group << NAMES.sample
  end
  print group
end

generate_groups