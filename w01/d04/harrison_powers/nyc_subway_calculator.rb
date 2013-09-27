SUBWAY = {
	:N => ["T", "34", "28", "23", "U", "8"],
	:L => ["8", "6", "U", "3", "1"],
	:SIX => ["G", "33", "28", "23", "U", "A"]
}

MAIN_MENU = "
Which Subway line are you starting on?
(N)
(L)
(6)

(q)uit
"
MENU_N = "
(T)ime Square
(34)th Street
(28)th Street
(23)rd Street
(U)nion Square
(8)th Street
"
MENU_L = "
(8)th Avenue
(6)th Avenue
(U)nion Square
(3)rd Avenue
(1)st Avenue
"
MENU_SIX = "
(G)rand Central
(33)rd Street
(28)th Street
(23)rd Street
(U)nion Square
(A)stor Place
"

def calculate_stops(train_line, first_stop, last_stop)
	num_of_stops = SUBWAY[train_line.to_sym].index(first_stop) - SUBWAY[train_line.to_sym].index(last_stop)
	return num_of_stops.abs
end

def ask(question)
	puts question
	@user_input = gets.chomp
end

while true
	train_line = ask(MAIN_MENU).upcase
	break if @user_input.downcase == "q"
	puts "Which stop are you getting on at?"
	first_stop = ask(MENU_N) if train_line == "N"
	first_stop = ask(MENU_L) if train_line == "L"
	first_stop = ask(MENU_SIX) if train_line == "6"
	puts "When are you getting off?"
	last_stop = ask(MENU_N) if train_line == "N"
	last_stop = ask(MENU_L) if train_line == "L"
	last_stop = ask(MENU_SIX) if train_line == "6"
	puts calculate_stops(train_line, first_stop, last_stop)
end