TEAM_NAME = [
"Thunder Cats",
"Team Voldemort",
"USA",
"My Little Ponies",
"Princess Conzuela Banana Hammock",
"Crap Bag",
"Thug Life",
"Flava of Love",
"G-Unit",
"The Lancasters",
"Hash Kickers",
"Spice Girls"]


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
"Yaritza Rodriguez"]

#methods
#def ask(question)
#	answer = gets.chomp
#end

#def ask_for_number(question)
#	ask(question)
#	answer=answer.to_i
#end



def random(size)
	groups = STUDENTS.shuffle.each_slice(size).to_a
	counter = groups.length
	group_hash = {}
	i = 0
	while counter > 0
		group_hash[TEAM_NAME.sample] = groups[i]
		counter = counter -1
		i = i + 1
	end
	return group_hash
end



puts "What size group do you want?"
ans_str = gets.chomp
ans_int = ans_str.to_i

puts random(ans_int)



