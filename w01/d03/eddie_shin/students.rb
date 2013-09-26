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


def random(size)
	student_array = STUDENTS.shuffle.each_slice(size).to_a {|a| p a}
	team_array = TEAM_NAME.shuffle
		if STUDENTS.length % size != 0
			remainder = student_array.pop
			last = student_array[student_array.length-1]
			n = 0
				while n < remainder.length
					last << remainder[n]
					n = n + 1
				end
		end
	group_hash = {}
	i = 0
		while i < student_array.length
			group_hash[team_array[i]] = student_array[i]
			i = i + 1
		end
	puts group_hash
end



puts "What size group do you want?"
ans_str = gets.chomp
ans_int = ans_str.to_i

puts random(ans_int)


